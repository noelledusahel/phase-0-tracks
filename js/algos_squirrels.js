
///////////
//Release 0
///////////
var longest = function(array){

var lengthArray = []
	for (var i = 0; i < array.length; i++){
		// lengthArray.push(array[i].length);
		// console.log(array)
		array[i] = array[i].length
		// console.log(array)
		array.reverse();
		// lengthArray.sort();
		//console.log(array)
		return array[0];
	}
console.log(array[0]);
}

var phrases =["slowly slowly, the egg learns to walk", " dip drop", "oh say can you see, by the dawns early light"];
console.log(longest(phrases))

////////////
//Release 1
///////////

// to create a function that passes two key value pairs
// match either object:key or object:value
//use object.hasOwnPropert(prop) method.
// or use object.getOwnPropertyNames(prop) 
//input is object, property
// output is a boolean return value. 
//function match(object1, object2){ // or function match(arrayObjects){
 
// function hasValue(obj, key, value) {
//  	//console.log(object1[key];
//  	if (object1.key() == object2.key(){
//  		return true;
//  		console.log("we found a match");
//  	}

// 	// if (objectFirst = objectSecond){
// 	// 	console.log("Theres a property match");
// 	// }
// }
// match({name: "Steven", age: 54}, {name: "Tamir", age: 54})

