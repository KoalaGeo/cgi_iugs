// JavaScript Document
//See intranet help pages for further instructions.

//Create a hash of some of the form variables and a random string that is to be compared against the same form variables in the coldfusion page.
function checkHash(){
	hRef=document.getElementById('h');
	Family_Name=document.getElementById('Family_Name');
	email=document.getElementById('Email');
	Address=document.getElementById('address');
	hStr=Family_Name.value + Family_Name.value.length + email.value + email.value.length + 'adskslndasebn' + Address.value + Address.value.length;
	hRef.value=hex_md5(hStr);
	return true;
	}
