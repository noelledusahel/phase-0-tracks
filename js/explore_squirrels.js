// var reverse function(string){}
// Create a method called reverse, that has a function that takes 
//a string as parameter
// inside of the function. take the string break it in to an array of letters
// name this letter_array. implement a counter that moves backwards through the array
//and for each letter, feed it in to a new_letter_array. 
// re join the arrays in to a string. 

function reverse(string){
	var letter_array = string.split('')
	console.log(letter_array)
	var new_letter_array = []
		for (var i = (letter_array.length - 1); i >= 0; i -= 1)
		new_letter_array.push(letter_array[i]);
		console.log(new_letter_array.join(''))
}

reverse("dog")