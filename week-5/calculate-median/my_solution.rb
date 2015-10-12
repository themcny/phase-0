# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself].

# 0. Pseudocode

# What is the input? Array of numbers
# What is the output? (i.e. What should the code return?) A single integer of the median
# What are the steps needed to solve the problem?
# => Sort the Array
# => Find the mid number
# => if there are two avg the two mid numbers
# => return the mid number

# 1. Initial Solution
def median(array)
	array.sort!
	amt = array.length
	if amt%2 == 0
		(array[amt/2] + array[amt/2 - 1]).to_f/2.to_f
	else
		array[amt/2]
	end
end



# 3. Refactored Solution



# 4. Reflection