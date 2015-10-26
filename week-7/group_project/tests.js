// Add the finished solution here when you receive it.
// Person 2 - Pseudocode

// The user wants to input a list of numbers (that can be any length) into the following
// functions.


// Function 1
// Pseudocode
// Function Sum that takes in an Array as a param.
// Set a var as sum equal to zero
// FOR in array
// add value to sum
// Return sum



// function Sum(array) {
//  var sum = 0;
//  for (var i = 0; i < array.length; i++) {
//    sum = sum + array[i];
//  }
//  return sum;
// }

// Re-factored solution

function sum(array) {
  var sum = 0;
  array.forEach(function(num) {
    sum += num;
  });
  return sum;
}

// Function 2
// Create Function called mean which takes in an array
// call the sum function on the array
// store that as sum
// divide the sum / array.length
// return mean

function mean(array) {
  var mean = sum(array) / array.length;
  return mean;
}

// Function 3
// Create function median which takes in an array
// if the array has an odd number of elements
//    Get the middle element
//    Return middle element
// else
//    call the median method with the two middle elements as an array
//    Return  median

// function median(array) {
//  if (array.length % 2 === 1) {
//    var i = Math.floor(array.length / 2);
//    return array[i];
//  }
//  else {
//    var i = array.length / 2;
//    return (array[i-1] + array[i]) / 2;
//  }
// }

// Re-factored solution

function median(array) {
  var i = Math.floor(array.length / 2);
  return array.length % 2 === 1 ? array[i] : (array[i-1] + array[i]) / 2;
}


// Every test passed.
// __________________________________________
// Tests:  Do not alter code below this line.

var oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
var evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)