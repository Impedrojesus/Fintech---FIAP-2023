function changeCheckBoxValue(checkBoxId){
	const checkBox = document.getElementById(checkBoxId);
	if (checkBox.value) 
		checkBox.value = "false";
	else
		checkBox.value = "true";
}

function dismissSuccessAlert(){
	document.getElementById("success-alert").remove();
}