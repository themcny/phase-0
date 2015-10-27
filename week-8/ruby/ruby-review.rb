# I worked on this challenge [by myself].
# This challenge took me [#] hours.

# Pseudocode
# Input: An Integer - num
# Output: Boolean - true or false
# Steps:
# Must meet one of two conditions:
# =>  (5*num^2 + 4) == perfect square
# =>  (5*num^2 - 4) == perfect square

# To check for a perfect square -
# sqrt_a = SQUAREROOT((5*num^2 + 4))
# sqrt_b = SQUAREROOT((5*num^2 - 4))

# IF INTEGER(sqrt_a)*INTEGER(sqrt_a) == (5*num^2 + 4) THEN
# RETURN true
# ELSE IF INTEGER(sqrt_b)*INTEGER(sqrt_b) == (5*num^2 - 4) THEN
# RETURN true
# ELSE
# RETURN false
# ENDIF


# Initial Solution

def is_fibonacci?(num)
	cond_one = 5*num*num + 4
	cond_two = 5*num*num - 4

	sqrt_one = Math.sqrt(cond_one)
	sqrt_two = Math.sqrt(cond_two)

	if sqrt_one == sqrt_one.to_i
		true
	elsif sqr_two == sqrt_two.to_i
		true
	else
		false
	end
		 	 
end

def is_perf_sq?(num)

end

# Refactored Solution







# Reflection