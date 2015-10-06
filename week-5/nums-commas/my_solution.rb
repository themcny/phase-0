# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Positive Integer
# What is the output? (i.e. What should the code return?) A string of the integer separated by commas
# What are the steps needed to solve the problem?
# => 1. Convert integer into a string
# => 2. Start from the end of the string
# => 3. Every third character, add in a comma
# => 4. Return the updated string


# 1. Initial Solution

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

# 2. Refactored Solution




# 3. Reflection

=begin
	
What was your process for breaking the problem down? What different approaches did you consider?



Was your pseudocode effective in helping you build a successful initial solution?



What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?



How did you initially iterate through the data structure?



Do you feel your refactored solution is more readable than your initial solution? Why?




=end