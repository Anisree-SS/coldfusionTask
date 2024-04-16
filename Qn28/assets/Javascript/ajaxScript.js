$(document).ready(function() {
    $('#login').click(function() {
        $("#invalid").text("");
        var name = $('#name').val().trim(); 
        var password = $('#password').val().trim();
        if (name == ''|| password =='' ){
            $("#invalid").html('Required user name and password');
            return false;
        }

        $.ajax({
            url: './../models/pages.cfc?method=doLogin',
            type: 'post',
            data:  {userName: name , password:password},
            dataType:"json",
            success: function(response) {
                if (response.message == "exists"){
                    $("#success").text('Login successfull !!!!');
                    setTimeout(function() {
                        window.location.href="../view/homePage.cfm";
                    },1000);

                } else {
                    $("#invalid").text('Invalid user name or password !!!!'); 
                }
            },
            error: function(xhr, status, error) {
                alert("An error occurred: " + error);
            }

        });
        return false;
    });
});

