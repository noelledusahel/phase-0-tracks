// var blue_array = ["sky blue", "teal", "navy blue" , "barbie pink"];

// blue_array.push("red");

// console.log(blue_array);

// var name_array = [ "lucky", "stumpy" , "wizard of oz" , "aladdin"];

// name_array.push("queenie");

// console.log(name_array);

// // var horse = {color: blue_array, name: name_array};

// for (var i = 0; i < name_array.length; i++){
// 	console.log("name and color: " + name_array[i], blue_array[i]);
// };
// // horse.push(blue_array[1],name_array[1]);
// // console.log(horse);

// var car = {
//   car_class: 'SUV',
//   color: 'black',
//   automatic: true
// };

// //  constructor function for a car.
// function carAdd(classCar, clr, transmission) {
//   this.classCar = classCar;
//   this.clr = clr;
//   this.transmission = transmission;
//   // car_add.push 
//   // inventory.push({car_class: class, color: clr, automatic: transmission });
//   // car.push(clr, transmission, car_add);
// }; // function does NOT end with semicolon
// // person.push({age: 35, name: "John Doe"}); // Array now contains 1 item
// carAdd('convertable', 'green', false);
// console.log(inventory);

// Tried with Noelle to create a hash-like object and push new info into the object.  could not push except into arrays.
// // created new 'car' object
// var car = {
//   car_class: 'SUV',
//   color: 'black',
//   automatic: true
// };
console.log("---------------------");
// now will try by making car in two arrays
var  car_class = ['SUV'];
var  color = ['black'];
var  automatic = [true];
function carAdd(classCar, clr, transmission) {
   // car_add.push 
  car_class.push(classCar);
  color.push(clr);
  automatic.push(transmission);
} // function does NOT end with semicolon
carAdd('convertable', 'green', false);
console.log("The types of cars we have:" + car_class);
carAdd('mini', 'red', true);
carAdd('limo', 'white', true);
for (var i = 0; i < car_class.length; i++){
    if (automatic[i]) {
      console.log("This car is a " + color[i] + " automatic " + car_class[i]);
    } else {
      console.log("This car is a " + color[i] + " standard " + car_class[i]);
    }    
};
