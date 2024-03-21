function printFile() {
    var number = document.getElementById("limit").value.trim();
	if(isNaN(number)){
		alert("Enter a number");	
		event.preventDefault();
	}
	else{
		return true;
	}
}
