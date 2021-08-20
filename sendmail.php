<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/PHPMailer';
require 'PHPMailer/src/Exception';


$mail = new PHPMailer(true);
$mail->CharSet = 'UTF-8';
$mail->setLanguage('ru', 'phpmailer/language/');
$mail->isHTML(true);

//От кого письмо

$mail->setFrom($_POST['email'], $_POST['name']);

//Кому

$mail->addAddress('dergan73@mail.ru');

//Письмо

$body = '<h1>Обратная связь</h1>';

if(trim(!empty($_POST['name']))){
    $body.='<p>Имя:'.$_POST['name'].'</p>';
}

$mail->Body = $body;

if(!$mail->send()){
    $message = 'Ошибка';
} else{
    $message = 'Отправлено';
}

$response = ['message' => $message];
header('Content-type: application/json');
echo json_encode($response);
?>