
function validate(){
    var count=0;
    var positions=document.getElementById("positions").value.trim();
    var errorPosition=document.getElementById("errorPosition");
    var positionErrorDiv=document.getElementById("positionErrorDiv");
        if(positions===""){
            document.getElementById("forPosition").innerHTML = "This field is required. Please enter a value.";
            errorPosition.classList.add("error");
            positionErrorDiv.classList.add("errorDivClr");
            count++;
            find();
        }
        else{
            document.getElementById("forPosition").innerHTML = "";
            errorPosition.classList.remove("error");
            positionErrorDiv.classList.remove("errorDivClr");
            find();
        }
    var month=document.getElementById("inputFieldTwo").value.trim();
    var day=document.getElementById("day").value.trim();
    var year=document.getElementById("datepicker").value.trim();
    var errorDate=document.getElementById("errorDate");
    var dateErrorDiv=document.getElementById("dateErrorDiv");
        if((day==="")|| (month==="")||(year==="")){
            document.getElementById("forDate").innerHTML="This field is required.Please enter a value.";
            errorDate.classList.add("error");
            dateErrorDiv.classList.add("errorDivClr");
            count++;
            find();
        }
        else{
            document.getElementById("forDate").innerHTML="";
            errorDate.classList.remove("error");
            dateErrorDiv.classList.remove("errorDivClr");
            find();
        }
    var profile = document.getElementById("profile").value.trim();
    var pattern = /^(http:\/\/|https:\/\/)?([a-zA-Z0-9]+(-[a-zA-Z0-9]+)*\.)+[a-zA-Z]{2,}\/?$/;
    var errorProfile=document.getElementById("errorProfile");   
    var profileErrorDiv=document.getElementById("profileErrorDiv");
        if (profile === "") {
            document.getElementById("forProfile").innerHTML = "Please enter a valid URL in http://website.com format.";
            errorProfile.classList.add("error");
            profileErrorDiv.classList.add("errorDivClr");
            count++;
            find();
        } 
        else if (!pattern.test(profile)) {
            document.getElementById("forProfile").innerHTML = "Please enter a valid URL in http://website.com format.";
            errorProfile.classList.add("error");
            profileErrorDiv.classList.add("errorDivClr");
            count++;
            find();
        } 
        else {
            document.getElementById("forProfile").innerHTML = "";
            errorProfile.classList.remove("error");
            profileErrorDiv.classList.remove("errorDivClr");
            find();
        }
        
    var fName=document.getElementById("fName").value.trim();
    var lName=document.getElementById("lName").value.trim();
    var errorName=document.getElementById("errorName");  
    var nameErrorDiv=document.getElementById("nameErrorDiv");
        if((fName==="")||(lName==="")){
            document.getElementById("forName").innerHTML="This field is required.Please enter a value.";
            errorName.classList.add("error");
            nameErrorDiv.classList.add("errorDivClr");
            count++;
            find();
        }
        else if((!isNaN(fName))||(!isNaN(lName))){
            document.getElementById("forName").innerHTML="Alphabets only allows.";
            errorName.classList.add("error");
            nameErrorDiv.classList.add("errorDivClr");
            count++;
            find();
        }
        else{
            document.getElementById("forName").innerHTML="";
            errorName.classList.remove("error");
            nameErrorDiv.classList.remove("errorDivClr");
            find();
        }
    var email=document.getElementById("email").value.trim();
    var errorEmail=document.getElementById("errorEmail"); 
    var emailErrorDiv=document.getElementById("emailErrorDiv");
    var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if(email==="")
        {
            document.getElementById("forEmail").innerHTML="This field is required. Please enter a value.";
            errorEmail.classList.add("error");
            emailErrorDiv.classList.add("errorDivClr");
            count++;
            find();
        }
        else if(!emailPattern.test(email)){
            document.getElementById("forEmail").innerHTML="Please enter a valid email address.";
            errorEmail.classList.add("error");
            emailErrorDiv.classList.add("errorDivClr");
            count++;
            find();
        }
        else{
            document.getElementById("forEmail").innerHTML="";
            errorEmail.classList.remove("error");
            emailErrorDiv.classList.remove("errorDivClr");
            find();
        }
   
    var partOne=document.getElementById("n0").value.trim();
    var partTwo=document.getElementById("n1").value.trim();
    var partThree=document.getElementById("n2").value.trim();
    var errorPhone=document.getElementById("errorPhone");
    var phoneErrorDiv=document.getElementById("phoneErrorDiv");

        if((partOne==="")||(partTwo==="")||(partThree==="")){
            document.getElementById("forPhone").innerHTML="This field is required. Please enter a value.";
            errorPhone.classList.add("error");
            phoneErrorDiv.classList.add("errorDivClr");
            count++;
            find();
        }
        else if(isNaN(partOne)||isNaN(partTwo)||isNaN(partThree)){
            document.getElementById("forPhone").innerHTML="Invalid phone Number";
            errorPhone.classList.add("error");
            phoneErrorDiv.classList.add("errorDivClr");
            count++;
            find();
        
        }
        else{
            document.getElementById("forPhone").innerHTML="";
            errorPhone.classList.remove("error");
            phoneErrorDiv.classList.remove("errorDivClr");
            find();
        }
    
    if(count==0){
        return true;
    }
    else{
        return false;
    }
}

function find() 
{
		 var x = document.getElementById("displayError");
        
		 if (x.style.display ==="none") 
		{
    			x.style.display = "block";
            
 		 } 
		else 
		{
   			 x.style.display = "none";
 		}
}
    


