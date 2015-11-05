
// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:
//preparations are complete

// Release 1:
var r1 = document.getElementById('release-0')
var att = document.createAttribute('class')
att.value = "done"
r1.setAttributeNode(att)


// Release 2:
var r2 = document.getElementById('release-1')//.style.display='none'
r2.style.display='none'


// Release 3:
//document.getElementsByTagName("H1").innerHTML="check";
var r3 = document.getElementsByTagName("H1")[0];
r3.innerHTML='I completed release 2'


// Release 4:
var r4 = document.getElementById('release-3');
r4.style.backgroundColor='#955251'

// Release 5:

var r5 = document.getElementsByClassName('release-4');
for (var i=0, il = r5.length; i<il; i++){
  r5[i].style.fontSize='2em';
}

//Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));


// Reflection

/*
What did you learn about the DOM?

I learned that it is pretty easy to access documents as long as you know whether that element
has an id or a class name (or even when it's got a tag name). Also editing the elements via
javascript was easier than I thought it'd be.


What are some useful methods to use to manipulate the DOM?

innerHTML is great for changing the text as you want. You can also manipulate background
colors and font sizes via '.style'. 


*/