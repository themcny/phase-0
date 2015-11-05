// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM

  bodyElement = $('body')
  h1Element = $('h1')
  mascotElement = $('mascot')
  imgElement = $('img')
  bodyH1 = $('body h1:first')
  mascotH1 = $('.mascot h1')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
 bodyH1.css({color:'blue', border:'1px solid black', visibility:'visible'})
 mascotH1.html('Copperheads')

//RELEASE 4: Event Listener
  // Add the code for the event listener here
imgElement.on('mouseover', function(e) {
	e.preventDefault()
	$(this).attr('src',"https://upload.wikimedia.org/wikipedia/commons/9/96/Agkistrodon_contortrix_contortrix_CDC-a.png")
});

imgElement.on('mouseout', function(e) {
	e.preventDefault()
	$(this).attr('src', 'dbc_logo.png')
});

//RELEASE 5: Experiment on your own

imgElement.click(function() {
	$(this).animate({height:'200px'},{speed:'slow'})
});




})  // end of the document.ready function: do not remove or write DOM manipulation below this.

/*

Reflection

What is jQuery?

Amazing.


What does jQuery do for you?

Amazing things.


What did you learn about the DOM while working on this challenge?

So much.



*/