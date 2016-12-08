
var colors = ["red", "ombre","sienna","orange"]; //these will be values
var names = ["Tinkerbell" , "Aladdin", "Snow White" , "Mickey Mouse"]; //these will be keys 

colors.push("yellow");
names.push("Sammie");

console.log(colors);
console.log(names);



// barn.names[1] = colors[1];

// console.log(names[0]);

// barn = {name: names, color: colors};  
// function stable(name_array, color_array){
	var barn = {};
	for (var i = 0; i < names.length; i++) { 
		barn[names[i]] = colors[i];
	}
	console.log(barn);
	// return barn;
// } 
// var result = stable(names, colors);
// console.log(result);



// for (var i = 0; i < name_array.length; i++){
// 	console.log("name and color: " + name_array[i], blue_array[i]);
// };
// // horse.push(blue_array[1],name_array[1]);
// // console.log(horse);

