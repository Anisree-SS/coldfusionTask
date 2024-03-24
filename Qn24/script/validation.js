$(document).ready(function() {
    $('#check').click(function() {
        var name = $('#name').val(); 
        var email = $('#email').val();
        if (name.trim() === '') {
            alert('Please enter your name.');
            return;
        }
        if (email.trim() === '') {
            alert('Please enter your email.');
            return;
        }
        $.ajax({
            url: 'component/qn24.cfc?method=checkMail',
            type: 'post',
            data:  {name: name, email: email}, 
            dataType:"json",
            success: function(response) {
                if (response.message === "exists"){
                    alert('Email id is already there');
                    $('#submitButton').prop('disabled',true);
                } else {
                    $('#submitButton').prop('disabled',false);
                }
            },
            error: function(xhr, status, error) {
                alert("An error occurred: " + error);
            }
        });
    });
});
