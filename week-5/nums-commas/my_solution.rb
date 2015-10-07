# Numbers to Commas Solo Challenge

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Positive Integer
# What is the output? (i.e. What should the code return?) A string of the integer separated by commas

# What are the steps needed to solve the problem?

# IF integer is less than or equal to 999 THEN
# RETURN original integer input, unchanged
# ELSE
# => 1. Convert integer into a string
# => 2. Convert string into array
# => 3. Start from the end of the array
# => FOR i between 0 and length of array
# => 4. Every third character, add in a comma
# => ENDFOR
# => 5. Convert array back to string
# => 6. Return the updated string
# ENDIF


# 1. Initial Solution
=begin
def separate_comma(integer)
  array_int = integer.to_s.split('').reverse
  if array_int.length < 4
    new_array = array_int
    return new_array.reverse.join
  else
    new_array = []
    for i in 0...array_int.length/3
      new_array[i] =  [','] + [array_int[i*3]] + [array_int[i*3 +1]] + [array_int[i*3 +2]]
    end
    new_array = new_array.join
    new_array = new_array.split('')
    new_array = new_array.drop(1)
    return new_array.join.reverse
  end
end
=end



# 2. Refactored Solution

def separate_comma(integer)
	array_int = integer.to_s.split('')
	if array_int.length < 4
		new_array = array_int
	elsif array_int.length%3 == 0
		for i in 1...array_int.length/3
			new_array = array_int.insert(i*-4, ',')
		end
	else
		for i in 1..array_int.length/3
			new_array = array_int.insert(i*-4, ',')
		end
	end
	return new_array.join
end


# 3. Reflection

=begin
	
What was your process for breaking the problem down? What different approaches did you consider?

I tried to think about the easiet way to interate over the characters of the integer.
The only think I could think of was to convert the integer into an array so that
I could iterate over every element and then add commas every third element. I considered
splitting the integer every third character rather than splitting it every single
character and adding in commas betweeen every array element. (e.g. rather than the 
array being [1,2,3,4,5,6] it would be [123,456]) but it wasn't flexible enough to handle
numbers that were not evenly divisible by 3.


Was your pseudocode effective in helping you build a successful initial solution?

It was. It was easy to read and since it was step-by-step it was pretty easy to think
of methods that might work.


What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

I chose to use insert because I thought it was better to insert the number by index.
My initial solution was very messy and relied on too many built-in methods. It was easier
to write the refactored solution because rather than manipulating the array over and over
again, I found a way to manipulate the array just once to get the commas into the array.


How did you initially iterate through the data structure?

I used a for loop to iterate over the array.


Do you feel your refactored solution is more readable than your initial solution? Why?

There are less manipulations of the data structure. It is a lot easier to parse through
the refactored code because instead of trying to pull apart arrays and then add it all
together again, I used the insert method to put the commas in appropriate places.


=end