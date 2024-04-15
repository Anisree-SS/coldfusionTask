$(document).ready(function() {
    $('#login').click(function() {
        var name = $('#name').val().trim(); 
        var password = $('#password').val().trim();
        if (name == ''|| password =='' ){
            $("#invalid").html('Required user name and password');
            return false;
        }

        $.ajax({
            url: '../models/pages.cfc?method=doLogin',
            type: 'post',
            data:  {userName: name , password:password},
            dataType:"json",
            success: function(response) {
                if (response.message == "exists"){
                    $("#success").text('Login successfull !!!!');
                    console.log(response);
                    window.location.href="../view/homePage.cfm";

                } else if(response.message == "invalid") {
                    $("#invalid").text('Something went wrong !!!!');
                }
            },
            error: function(xhr, status, error) {
                alert("An error occurred: " + error);
            }

        });
    });
});

