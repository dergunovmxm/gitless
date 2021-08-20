"use strict"

document.addEventListener('DOMContentLoaded', function () {
    const form = document.getElementById('form');
    form.addEventListener('sumbit', formSend);

    async function formSend(e) {
        e.preventDefault();

        let error = formValidate(form);

        let formData = new FormData(form);

        if (error === 0) {
            let response = await fetch('sendmail.php', {
                method: 'POST',
                body: formData 
            });
            if(response.ok){
                let result = await response.json();
                alert(result.message);
                form.reset();
            } else{
                alert('Ошибка');
            }
        } else {
            alert('Заполните обязательные поля')
        }

    }

    function formValidate(form) {
        let error = 0;
        let formReq = document.querySelectorAll('._req');

        for (let index = 0; index < formReq.length; index++) {
            const input = formReq[index];

            if (input.value === '') {
                error++;
            }
        }
        return error;
    }



});