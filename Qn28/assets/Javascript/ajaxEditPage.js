$(document).ready(function() {  
    var allParas="";
    $('#editForm').on("submit",function() {
        var pageId = $('#pageId').val().trim(); 
        var pageName = $('#pageName').val().trim();
        var pageDes = $('#pageDes').val().trim();
        $("#editSuccess").text(""); 
        console.log("recall");
        if(validation()){
            console.log(success);
            $.ajax({
            url: '../models/pages.cfc?method=savePage',
                type: 'post',
                data:  {pageId : pageId, pageName : pageName, pageDes : pageDes},
                dataType:"json",
                success: function(response) {
                    if (response.message == "updated"){
                        $("#editSuccess").text('Page updated successfully');
                        setTimeout(function() {
                            window.location.href="../view/list.cfm";
                        },1000);

                    } else if(response.message == "inserted") {
                        $("#editSuccess").text('Page inserted successfully'); 
                        setTimeout(function() {
                            window.location.href="../view/list.cfm";
                        },1000);
                    }else if(response.message=="exists"){
                        $("#error").text("The page is already present");
                    }
                    else{
                        $("#error").text("Something went wrong");
                    }
                },
                error: function(xhr, status, error) {
                    alert("An error occurred: " + error);
                }
            });
        }
        return false;
    });

    function validation(){
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
            console.log(allParas);
            return false; 
        }
        return true;
    }
});

