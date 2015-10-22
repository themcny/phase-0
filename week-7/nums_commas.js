// Separate Numbers with Commas in JavaScript


// I worked on this challenge with: Max Iniguez.

// Pseudocode

/*
Input:  integer
Output: integer - with commas - as a string
Steps:

1. Make integer into String with each digit as it's own element
2. Reverse the number
3. Every 3 digits, add a comma
4. Reverse the number
5. RETURN a string


// Initial Solution

function separateComma(integer) {
  var string = integer.toString();
  //return string.split('').reverse().join('');
  var string_comma = "";
  for (var counter = string.length; counter > 0; counter -= 3) {
    var sub = string.substring(counter, (counter -3))
    string_comma = sub + "," + string_comma;
    
  }
  return(string_comma.substring(0, string_comma.length-1));
};

console.log(separateComma(100000));
*/

// Refactored Solution

function separateComma(integer) {
  var string = integer.toString();
  var string_comma = "";
  for (var counter = string.length; counter > 0; counter -= 3) {
    var sub = string.substring(counter, (counter -3));
    if (counter === string.length) {
      string_comma = sub.concat(string_comma);
      continue;
    }
    string_comma = sub.concat(",", string_comma);
    
  }
  return string_comma;
};

console.log(separateComma(100));


// Your Own Tests (OPTIONAL)
function assert(test, message) {
  if (!test) {
    throw "Error: " + message;
  }
  return true;
}

assert(
  (typeof separateComma(10000) === 'string'),
  "It should output a String."
)
assert(
  (separateComma(100) === "100"),
  "There should be no commas."
)
assert(
  (separateComma(1000) === "1,000"),
  "There should be one comma between the thousands and hundreds place."
)
assert(
  (separateComma(10000) == "10,000"),
  "There should be one comma between the thousands and hundreds place."
)
assert(
  (separateComma(100000) === "100,000"),
  "There should be one comma between the thousands and hundreds place."
)
assert(
  (separateComma(1000000) === "1,000,000"),
  "There should be two commas. One between the thousands and hundreds place. The other between the millions and hundred thousands place."
)



// Reflection

/*

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

It was interesting because we didn't have all the built in methods (and knowledge) that we
had when approaching the problem in Ruby. We had to try the simplest steps possible since
we weren't sure how the behaviors of strings and arrays differed from Ruby in JavaScript.


What did you learn about iterating over arrays in JavaScript?

I learned that we could iterate over strings, instead of arrays in JavaScript. Which meant
that the index goes from 1 to string.length instead of from 0 to (string.length-1).
Additionally for a string there was no built in reverse function. So we needed to manually
iterate from back to front instead of using a built in method to reverse the order.


What was different about solving this problem in JavaScript?

There were less built in methods to use. But we could modify the string much more easily.
We didn't /have/ to convert the integer into an array made up of single digits. It was 
possible to just keep the integer in string form and modify the string.


What built-in methods did you find to incorporate in your refactored solution?

We used a concat method to put together the strings and substrings. We also used toString
to convert the integer into a string.



*/