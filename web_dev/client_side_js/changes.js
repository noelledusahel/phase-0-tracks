console.log ("script is running!")

// var selects = document.getElementsByClassName("day1")
// select = selects[0]
// select.style.fontFamily = "Helvetica";

function addBorderRed(event) {
// var selects = document.getElementsByClassName("day1");
// select = selects[0];
event.target.style.border = "solid red";
}

function addBorderBlue(event){
	event.target.style.border = "solid blue";
}

function addBorderGreen(event){
	event.target.style.border = "solid green";
}
var select = document.getElementsByClassName("day1")[0];
console.log(select)
select.addEventListener("click", addBorderRed);

var select = document.getElementsByClassName("day2")[0];
console.log(select)
select.addEventListener("click", addBorderBlue);

var select = document.getElementsByClassName("day3")[0];
console.log(select)
select.addEventListener("click", addBorderGreen);