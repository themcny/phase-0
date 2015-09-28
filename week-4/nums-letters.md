###Release 1: Summarize

**What does `puts` do?**

Puts prints the output (of your code) to the console with a new line. It also returns nil.


**What is an integer? What is a float?**

Integers are numbers without decimal points. (e.g. 5, -10, 1234567890)

Floats (a.k.a. floating-point numbers) are numbers with decimal points. (e.g. 1.2 3.14159265358, .3, 0.0)


**What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?**

When you do math with integers as inputs, the output (answer) will also be an integer. Since integers are numbers without decimal points, the answer will be rounded down (e.g. `7 / 3` will output `2` rather than the more accurate `2.333333` that float division would output). 


Division with floats is more accurate since floats have decimal points.

Integer division can be useful if dividing things that can't be split into less than 'one thing'. For example, if there were 100 computers for 16 students, each student would get only 6 computers even though `100 / 16` is more accurately `6.25`. Computers can't be split into fourths, so the answer would be that each student would have 6 computers (and there would be 4 computers left over).


###Release 2: Try it!

**Hours in a Year**
```ruby
puts "On a regular year: #{365*24} hours."
puts "On a leap year #{366*24} hours."
```


**Minutes in a Decade**
```ruby
puts "If there are only two leap years in that decade: #{((10*365)+2))*24*60} minutes."
puts "If there are three leap years in that decade:#{(10*365+3)*24*60} minutes."
```


###Release 5: Exercises

[Defining Variables](https://github.com/themcny/phase-0/blob/master/week-4/defining-variables.rb "Defining Variables")
[Simple String Methods](https://github.com/themcny/phase-0/blob/master/week-4/simple-string.rb "Simple Strings")
[Local Variables and Basic Math](https://github.com/themcny/phase-0/blob/master/week-4/basic-math.rb "Basic Math")


###Release 7: Reflect

**How does Ruby handle addition, subtraction, multiplication, and division of numbers?**

(Note: if there are decimals in the input numbers, then it's adding two floats and will return a float; if there are no decimals in the input numbers then it's adding two integers and will return an integer.)

`+` is used to add two numbers 
`-` is used for subtracting two numbers.
`*` is used for multiplying two numbers.
`/` is used for dividing two numbers. (Note: it is important to remember to input the numbers as floats for division if you want the most accurate answer as inputting the numbers as integers will result in a rounded answer.)


**What is the difference between integers and floats?**

Integers are whole numbers and do not have decimal points. Floats can be used to represent fractions and they have decimal points (even if it's 3.0).


**What is the difference between integer and float division?**

Float division will return the most accurate answer because it won't round the answer (e.g. `1 / 3` will return `.3333`). Integer division will return the answer rounded down to the nearest integer since there are no fractions or decimals in integers (e.g. `1 / 3` will return `0`).


**What are strings? Why and when would you use them?**

Strings are gropus of characters. Strings can include letters, numbers, spaces, symbols, and punctuation. They can be used to output a message with a combination of words and numbers. I would use them to put my numerical answers to a question in context (e.g. if the question was 'How old are you?'' my answer as typed in ruby might be `puts "I am #{21}.").


**What are local variables? Why and when would you use them?**

Variables are a way to store data (be it a string, integer, array, etc.). Local variables begin with a lowercase letter or `_`. Using an equal sign you can assign a value to a local variable (`two = 2`). Local variables are variables that work within the local scope (e.g. within the definition of a Ruby method, class, or module).

I would use a local variable if I wanted to define a variable witin a class but I didn't want it to be applicable over the entire scope of a larger program. Local variables can be declared, assigned, etc. without affecting functions outside that local scope. 


**How was this challenge? Did you get a good review of some of the basics?**

This challenge was pretty good. It got some of the rust off in writing Ruby. 
