# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

=begin
	
IF list_of_integers == [] THEN
	
	return 0

ELSE
	amount_of_numbers = 0
	index = 0
	
	WHILE index < list_of_integers.length
		IF list_of_integers[index] <= upper_bound AND list_of_integers[index] >= lower_bound THEN
			amount_of_numbers = amount_of_numbers + 1
		ELSE
			amount_of_numbers = amount_of_numbers + 0
		ENDIF
		
		index = index + 1
	
	ENDWHILE
	
	return num

ENDIF
	
=end


def count_between(list_of_integers, lower_bound, upper_bound)
	if list_of_integers == []
		return 0
	else
		num = 0
		i = 0
		while i < list_of_integers.length
			if list_of_integers[i] <= upper_bound && list_of_integers[i] >= lower_bound
				num += 1
			else
			end
			i += 1
		end
		return num
	end
end