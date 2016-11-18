//This function will take a string as a parameter and reverse the string. 
var reverse = function(string){
// for each letter in the string, we care changing the index position. 
for (var i = 0; i <string.length; i++){
	string[i] = string[-i];
	console.log('' + string[i]);
}
}
console.log(reverse("hello"));