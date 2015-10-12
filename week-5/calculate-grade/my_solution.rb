# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself].

# 0. Pseudocode

# What is the input? Array - of test scores
# What is the output? (i.e. What should the code return?) A string 
# What are the steps needed to solve the problem?
# => 1. Average the integers in the Array
# => => a. sum the array
# => => b. divide the sum by the size
# => 2. Based on the average return a string
# => => IF average is greater than or eql to 90 THEN
# => => => RETURN 'A'
# => => ELSIF average between 89 and 80 THEN
# => => => RETURN 'B'
# => => ELSIF avg between 79 and 70 THEN
# => => => RETURN 'C'
# => => ELSIF avg between 69 and 60 THEN
# => => => RETURN 'D'
# => => ELSIF avg below 60 THEN
# => => => RETURN 'F'
# => => ENDIF


# 1. Initial Solution

def get_grade(array)
	mean = array.inject { |sum, n| sum + n }.to_f / array.length.to_f
	if mean >= 90.to_f
		return 'A'
	elsif mean >= 80.to_f
		return 'B'
	elsif mean >= 70.to_f
		return 'C'
	elsif mean >= 60.to_f
		return 'D'
	else
		return 'F'
	end			
end

# 3. Refactored Solution



# 4. Reflection