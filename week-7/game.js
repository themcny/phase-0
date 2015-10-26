// Fight Scheme like Street Fighter?

// 1st establish objects - hero(s), weapon(s), enemy(s)?
// The Hero - so hero, punchingBag and sword don't work if it is called for the animation function
var hero = {
	health: 100,
	damage: {
		hand: 5,
		foot: 10
	},
	weapon: false
}

// The Enemy - A Punching Bag
var punchingBag = {
	health: 1000
}

// The Weapon - A Sword
var sword = {
	damage: {
		hand: 15,
		special: 30
	},
	weapon: true
}

// The Level
var level = document.getElementById("level");

//Getting position - need to make it fexible so that it can take multiple elements in? and return their positions to new variables?
var xPos = 0;
var yPos = 0;
function getPosition(idString) {
	var element = document.getElementById(idString)    
    while(element) {
        xPos += (element.offsetLeft - element.scrollLeft + element.clientLeft);
        yPos += (element.offsetTop - element.scrollTop + element.clientTop);
        element = element.offsetParent;
    }
}

getPosition('hero');
hero.xPos = xPos;
hero.yPos = yPos;

getPosition('punchingBag');
punchingBag.xPos = xPos;
punchingBag.yPos = yPos;

// Function to equip a sword and increase damage
function equip(item, person){
	if (item.pos == person.pos)
		person.damage.hand = item.damage.hand;
		person.weapon = item.weapon;
};


// Function to punch an enemy if the enemy is in the same place
function punch(person, enemy){
	if (enemy.pos === hero.pos)
		enemy.health -= person.damage.hand;
};

// Function to kick an enemy
function kick(person, enemy){
	if (enemy.pos === person.pos)
		enemy.health -= person.damage.foot;
};

// Function to use a weapon's special traits
function weapon(person, enemy){
	if (person.weapon === true){
		if (enemy.pos === person.pos){
			enemy.health -= person.damage.special;
		} else {
			person.health -= 1;
		}
	} else {
		// Alert that there is no weapon equipped
		console.log("You have no weapon equipped.")
	}
};

// Functions for adding and removing a class - for CSS animations
function removeAclass(idString, classString) {
	var id = idString;
	var myClassName = classString;
	var thing;
	thing = document.getElementById(id);
	thing.className = thing.className.replace(myClassName, "")
}

function addAclass(idString, classString) {
	var id = idString;
	var myClassName = classString;
	var thing;
	thing = document.getElementById(id);
	thing.className = thing.className.replace(myClassName, "");
	thing.className = thing.className + myClassName;
}

// Swing Function for Punching Bag

// Health Bar JavaScript and Damage
function damage(health,htmlid,damage) {
	health = document.getElementById(htmlid);
	health.value = health.value - damage;
};




// recognizing the arrow key presses - this part works
document.onkeydown = function(e) {
    switch (e.keyCode) {
        case 37:
            //alert('left');
            move('hero', 'left');
            break;
        case 38:
            //alert('up');
            break;
        case 39:
            //alert('right');
            addAclass('hero', 'walkright');
            setInterval(function() { removeAclass('hero', 'walkright'); }, 1500);
            move('hero', 'right');
            break;
        case 40:
        	//alert('down');
        	break;
        case 17:
        	addAclass('hero', 'kick');
        	setInterval(function() { removeAclass('hero', 'kick'); }, 1500);
        	kick(hero, punchingBag);
        	damage(punchingBag.health, 'healthEnemy', hero.damage.foot);
        	addAclass('punchingBag','swing');
        	setInterval(function() { removeAclass('punchingBag', 'swing'); }, 1500);
        	break;
    	case 18:
    		addAclass('hero', 'punch');
			setInterval(function() { removeAclass('hero', 'punch'); }, 1500);
    		punch(hero, punchingBag);
    		damage(punchingBag.health, 'healthEnemy', hero.damage.hand);
    		addAclass('punchingBag','swing');
        	setInterval(function() { removeAclass('punchingBag', 'swing'); }, 1500);
    		break;
		case 90:
			//alert('z');
			weapon(hero, punchingBag)
			break;
    }
};

//http://piq.codeus.net/draw

// Moving Left and Right
/*
var itemObject = null;

function position(idString){
	itemObject = document.getElementById(idString);
	itemObject.style.position = 'relative';
	itemObject.style.left = '0px';
};

function move(item, direction){
	if (direction === "left"){
		itemObject.style.left = parseInt(itemObject.style.left) + 5 + "px";
	}
	else if (direction === "right") {
		itemObject.style.left = parseInt(itemObject.style.left) - 5 + "px";
	}
};

//window.onload = position('hero');

// Jumping 

var hopping = false;

function hop() {
	if (hopping === false) {
		hopping = true;
		setTimeout(land, 500);
	}
}

function land() {
	hopping = false;
}
*/

/*document.on('keydown', function(e) {
	if (e.keyCode === 18) {
		addAclass('.hero', 'punch');
		setTimeout(function() { removeAclass('.hero', 'punch'); }, 150);
	}
});*/

// Function 'vector' to group coordinates -- figure out movement
/*function Vector(x, y) {
	this.x = x; this.y = y;
}*/

/*
// positioning traits
var x = 0,
y = 0,
vix = 0, //initial speed/movement
viy = 0, //initial speed/movement
speed = 2, 
friction = 0.98,
keys =[];

// Now establishing all the other functions - punch, kick, equip, move

// Function to Walk
var canvas = document.getElementById("canvas"),
	ctx = canvas.getContext("2d");

canvas.width = 300;
canvas.height = 900;

function walk(){
	if (keys[37]) { // moving left
		if (vix > -speed) {
			vix--;
		}
	}
	if (keys[38]) { // moving up
		if (viy > -speed) {
			viy--;
		}
	}
	if (keys[39]) { // moving right
		if (vix < speed) {
			vix++;
		}
	}
	if (keys[40]) { // moving down
		if (viy < speed) {
			viy--;
		}
	}

	//now add some friction to movement
	viy *= friction;
	y += viy;
	vix *= friction;
	x += vix;

	// now add behavior when player reaches the edge of the background

	if (x >= 830) {
		x = 830; //what happens at right most edge
	} else if (x <= 70) {
		x = 70; //what happens at the left most edge
	}

	if (y > 220) {
		y = 220; //what happens at top edge
	} else if (y <= 80) {
		y = 80; //what happens at bottom edge
	}

	// set a timeout
	setTimeout(walk, 15);

}

walk();

document.body.addEventListener("keydown", function (e) {
	keys[e.keyCode] = true;
});
document.body.addEventListener("keyup", function (e) {
	keys[e.keyCode] = false;
});
*/