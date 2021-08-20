<?php
require 'connect.php';

$mode = isset($_REQUEST['mode']) ? $_REQUEST['mode'] : false;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $password = password_hash(trim($_REQUEST['password']), PASSWORD_BCRYPT);
    $email = trim($_REQUEST['email']);

    /**
     * Проверка авторизации
     */

    if ($mode === 'admin_panel') {
        $email = trim($_REQUEST['email']);
        $user = $mysqli->query("SELECT email, password FROM users WHERE email = '$email' limit 1");
        $user = mysqli_fetch_array($user, MYSQLI_ASSOC);

        if($user){
            if (password_verify(trim($_REQUEST['password']), $user['password'])){
                $customer = $mysqli->query("SELECT * FROM users");

                while($result = mysqli_fetch_array($customer, MYSQLI_ASSOC)){
                    $users[] = $result;
                }
                require 'users.html';
            } else{
                $veri_fail = 'true';
                require 'auth.html';
            }
        }
        exit;
    }

    /**
     * Сбор данных их форм
     */

    $name = trim($_REQUEST['name']);
    $surname = trim($_REQUEST['surname']);
    $education = trim($_REQUEST['education']);
    $role = trim($_REQUEST['role']);
    $city = trim($_REQUEST['city']);
    $password = password_hash(trim($_REQUEST['password']), PASSWORD_BCRYPT);
    $email = trim($_REQUEST['email']);
    $text = trim($_REQUEST['text']);

    /**
     * Отправка данных на мейл админа
     */

    if (isset($user_is_created)) {

        $where = "dergan73@mail.ru";
        $main = "Заявка на сайт";
        $content = "Отправитель: " . $name . "\r\n"
            . "Почта: " . $email . "\r\n"
            . "Город: " . $city . "\r\n"
            . "Образование: " . $education . "\r\n"
            . "Информация: " . $about . "\r\n";

        $from = "From: feedback@example.com>\r\n";
        mail($where, $main, $content, $from);
    }

    /**
     * Загрузка файла
     */

    $uploadname = basename($_FILES['file_i']['name']);
    $uploadpath = 'images/' . $uploadname;
    (move_uploaded_file($_FILES['file_i']['tmp_name'], $uploadpath));

    /**
     * Запрос на вставку данных в таблицу
     */

    $user_is_created = $mysqli->query("INSERT INTO users (name, surname, email, information, password, city, education, role, file_name, file_path) VALUES ('$name', '$surname', '$email', '$text', '$password', '$city', '$education', '$role', '$uploadname', '$uploadpath')");
}

if ($mode === 'auth') {
    require 'auth.html';

} else {
    require 'index.html';
}
exit;
