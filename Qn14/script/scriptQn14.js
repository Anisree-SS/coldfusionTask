function printFile() {
    var file = document.getElementById('imgFile').files[0].size;
	file=file/(1024*1024);
	if(file > 1){
		alert("Choose a file lessthan 1MB!..");
		event.preventDefault();
	}
	else{
		return true;
	}
}