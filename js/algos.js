var longest = function(array){

var lengthArray = []
for (var i = 0; i < array.length; i++){
	// lengthArray.push(array[i].length);
	array.sort(array[i].length);
	array.reverse();
	// lengthArray.sort();
	}

//look up how to retreive last item in array
console.log(array[0]);

//for each item in this array, we will run a item.length
//we could re-order the list so that the longest word is first
//enter this in to a new array
//use sort Array
//finally then function longest would return the item in the 0 index position
}
console.log(longest(["greens","beans","chicken", "tomatoes"]))