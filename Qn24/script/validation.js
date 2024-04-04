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
            data:  {email: email}, 
            dataType:"json",
            success: function(response) {
                if (response.message === "exists"){
                    alert('Email id is already there');
                    $('#submitButton').prop('disabled',true);
                    
                } else {
                    alert('Email id is not subscribed');
                    $('#submitButton').prop('disabled',false);
                }
            },
            error: function(xhr, status, error) {
                alert("An error occurred: " + error);
            }
        });
    });

    $('#submitButton').click(function() {
        var name = $('#name').val(); 
        var email = $('#email').val();

        $.ajax({
            url: 'component/qn24.cfc?method=uploadMail',
            type: 'post',
            data:  {name:name,email: email}, 
            dataType:"json",
            success: function(response) {
                
                
                if (response.message === "uploaded"){
                    alert("subscribed!!!!!");
                }  
                else{
                    alert("not subscribed!!!!!");
                }
            },
            error: function(xhr, status, error) {
                alert("An error occurred: " + error);
            }
        });
    });
});

