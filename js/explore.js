//This function will take a string as a parameter and reverse the string. 
var reverse = function(string){
// for each letter in the string, we care changing the index position. 
var stringArray = string.split("");
// for (var i = 0; i < stringArray.length; i++){
// 	stringArray.splice(i, 1);
// 	console.log(stringArray);
// };
var newArray = stringArray.reverse();
var newWord = newArray.join('');
var finalWord = newWord.toString();
console.log(finalWord);
};


console.log(reverse("hello"))
console.log(reverse("bologna"))