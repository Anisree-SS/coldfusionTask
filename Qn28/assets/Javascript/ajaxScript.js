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
                console.log("An error occurred: " + error);
            }
        });
        return false;
    });


    $('#editForm').on("submit",function() {
        var pageId = $('#pageId').val().trim(); 
        var pageName = $('#pageName').val().trim();
        var pageDes = $('#pageDes').val().trim();
        $("#editSuccess").text(""); 
        console.log("recall");
        if(validation()){
            $.ajax({
                url: '../controller/pages.cfc?method=callSavePage',
                type: 'post',
                data: {pageId : pageId, pageName : pageName, pageDes : pageDes},
                dataType:"json",
                success: function(response) {
                    $("#error").html("");
                    if(response.success){
                        $("#editSuccess").text(response.msg);
                        delayRedirect();
                    }
                    else{
                        $("#error").html(response.msg);    
                    }
                },
                error: function(xhr, status, error) {
                    console.log("An error occurred: " + error);
                }
            });
        }
        return false;
    });


    $('.deleteBtn').click(function() {
        var pageId =$(this).attr("data-id"); 
        var row=$(this);
        if(!confirm("Are you sure you want delete the page ?")){
            return false;
        }
        $.ajax({
            url: '../models/pages.cfc?method=deletePage',
            type: 'post',
            data:  {pageId: pageId},
            dataType:"json",
            success: function(response) {
                if(response.success){
                    row.parents('tr').remove();
                    //$("#"+pageId).remove();
                } 
            },
        });
        return true;
    });


    function validation(){
        var allParas="";
        var pageName = $('#pageName').val().trim();
        var pageDes = $('#pageDes').val().trim();
        if(pageName==''){  
            allParas+="<br>Page name is required"; 
        }
        else if (/\d/.test(pageName)) {
            allParas+="<br>Page name should be string values";              
        }
        if(pageDes==''){
            allParas+="<br>Page description is required";
        }
        else if(!isNaN(pageDes)){
            allParas+="<br>Page description required strings also";
        }
        if(allParas!==""){
            $("#error").html(allParas);
            return false; 
        }
        return true;
    } 


    function delayRedirect(){
        setTimeout(function() {
            window.location.href="../view/list.cfm";
        },1000);
    }

    
});
