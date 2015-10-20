// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var age = 22, year = 2015;
var birthyear = year - age;
console.log(birthyear);

// Favorite Food

//prompt("What is your favorite food?")
//alert("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Triangle

for (var num = 1; num < 9; num += 1)
	console.log(Array(num).join("#"));

// FizzBuzz

for (var num = 1; num <= 100; num += 1){
	if (num % 3 == 0 && num % 5 == 0)
		console.log("FizzBuzz");
	else if (num % 3 == 0 && num % 5 != 0)
		console.log("Fizz");
	else if (num % 3 != 0 && num % 5 == 0)
		console.log("Buzz");
	else
		console.log(num);
}
	

// Chess Board

var size = 8;
var counter = 1;
while (counter <= size) {
	half = (size / 2) + 1;
	if (counter % 2 != 0){
		counter += 1;
		console.log(Array(half).join(" #") + "\n");
	}
	else if (counter % 2 == 0){
		counter += 1;
		console.log(Array(half).join("# ") + "\n");
	}
}



// Functions

// Complete the `minimum` exercise.

function min(x, y){
	return Math.min(x, y);
}

console.log(min(3, 5));

// Recursion - just for extra practice.

function isEven(num){
	if (num < 0){
		num = num * -1;
		return isEven(num);
	}
	else if (num == 0)
		return true;
	else if (num == 1)
		return false;
	else{
		num = num - 2;
		return isEven(num);
	}
}

console.log(isEven(8));
console.log(isEven(-9));
console.log(isEven(50));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Nicole",
	age: 22,
	3_fav_foods: ["steak","bacon","oysters"],
	quirk: "has perfect pitch"
};