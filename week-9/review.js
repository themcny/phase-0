/*Grocery List JavaScript*/
/*
Psuedocode:

Create a food object that has two properties: name and amount

Create a grocery list object that has it's own functions: add, remove, update, and display

Add function should add a food object to an array (list).
Remove function should remove a food object from that array (list)
Update function should update the quantity trait of the food object
Display function should print the grocery list

*/

/* Initial Solution 

function Food(name, amount){
  this.name = name;
  this.amt = amount;
}

function GroceryList(){
  var list = [];
  this.display = function(){
    for (var index = 0; index < list.length; index ++){
      console.log("We need " + list[index].amt.toString() + " of " + list[index].name)
    }
  }
  this.add = function(food){
    list.push(food)
  }
  this.remove = function(food){
  	for (var index = 0; index < list.length; index ++) {
  		if (list[index] == food) {
  			list.splice(index, 1);
  		}
  	}
  }

  this.update = function(food, qty){
  	var item = list.indexOf(food);
  	list[item].amt = qty;
  }
}
*/


/* Refactored Solution */

function Food(name, amount){
  this.name = name;
  this.amt = amount;
}

function GroceryList(){
  var list = [];
  this.display = function(){
    for (var index = 0; index < list.length; index ++){
      console.log("We need " + list[index].amt.toString() + " of " + list[index].name)
    }
  }
  this.add = function(food){
    list.push(food)
  }
  this.remove = function(food){
  	var index = list.indexOf(food);
  	if (index != -1) {
  		list.splice(index, 1);
  	}
  }

  this.update = function(food, qty){
  	var item = list.indexOf(food);
  	list[item].amt = qty;
  }
}



/* Driver Code */

var apple = new Food('apple', 3);
var banana = new Food('banana', 5);
var steak = new Food('steak', 1);
var ginger = new Food('ginger', 1);
var a = new GroceryList();
a.add(apple);
a.add(banana);
a.add(steak);
a.add(ginger);
a.display();
a.remove(steak);
a.add(steak);
a.update(steak, 6);
a.display();

/*
Reflection:

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

I got better at passing information between objects and creating functions within objects.
It was also good practice to put objects in an array and figure out how to access those 
object properties. Additionally, it solidified how scope works in JavaScript (and how it
is different than scope in Ruby).


What was the most difficult part of this challenge?

Remembering all the small things. I still sometimes forget to close brackets or add semi-
colons at the end of lines. Also, removing a certain food was one of the harder functions
to write.


Did an array or object make more sense to use and why?

I used an array of objects to store the grocery list. This way, I could organize the 
properties and assign them to their proper objects. Additionally, by using an array
it was easy to iterate through the elements of the array so that I could find and manipulate
the proper elements.

*/


/*Simple Guessing Game JavaScript*/

/* PseudoCode

Create an object GuessingGame
Two functions: solved and guess
Guess tells the user if the guess is high, low, or correct
Solved returns a boolean which tells the user whether they've guessed the right answer or not

*/

/* Initial Solution 

function GuessingGame(number) {
	this.answer = number;
	var guessed = nil;
	var last_result = "";
	this.guess = function(last_guess) {
		if (last_guess === number) {
			guessed = true;
			last_result = "correct";
		}
		else if (last_guess < number){
			guessed = false;
			last_result = "low"
		}
		else if (last_guess > number){
			guessed = false;
			last_result = "high"
		}
		console.log(last_result);
	}
	
	this.solved = function(){
		console.log(guessed)
	}
}

*/


/* Refactored Solution */

function GuessingGame(number) {
	var guessed = false;
	var last_result = "";
	this.guess = function(last_guess) {
		if (last_guess === number) {
			guessed = true;
			last_result = "correct";
		}
		else if (last_guess < number){
			last_result = "low"
		}
		else if (last_guess > number){
			last_result = "high"
		}
		console.log(last_result);
	}
	
	this.solved = function(){
		console.log(guessed)
	}
}

/* Driver Code */

var game = new GuessingGame(10)

game.solved()

game.guess(5)
game.guess(20)
game.solved()

game.guess(10)
game.solved()


/* Reflection 

What concepts did you solidify in working on this challenge? 

I got more practice writing functions for objects. Also got practice at using if/else
statements in JavaScript (I always forget to put parentheses around the condition).
It was also good practice with constructor/prototypes.


What was the most difficult part of this challenge?

Didn't realize that JavaScript doesn't like '?' in a function name. It took me a little
while to figure out that the question mark was causing the error to be thrown.


Did you solve the problem in a new way this time?

Although, I tried to think of a new way to solve this problem (and though it is different
than the Ruby solution because JavaScript doesn't have classes), there wasn't much wiggle
room on this particular challenge.


Was your pseudocode different from the Ruby version? What was the same and what was different?

It was fairly similar. Again the main difference is in the way classes are treated in Ruby
and how to manipulate functions in JavaScript. It is different because a function can be
used in the place of an object. In Ruby classes take care of creating new instances and 
define the behavior those instances. In JavaScript, a constructor creates new instances whil
prototypes define the behavior of instances.



*/