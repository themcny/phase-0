# Largest Integer

# I worked on this challenge [by myself].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

=begin

IF list_of_numbers is empty THEN
	return nil
ELSE IF list_of_numbers.length is 1 THEN
	return list_of_numbers[0]
ELSE
	index_number = 0
	max_number = list_of_numbers[index_number] 
	WHILE index_number < list_of_numbers.length
		index_number = index_number + 1
		IF max_number < list_of_numbers[index_number] THEN
			max_number = list_of_numbers[index_number]
		ELSE
			max_number = max_number
		ENDIF
	ENDWHILE
	return max_number
ENDIF
		
=end

def largest_integer(list_of_nums)
	if list_of_nums.length == 0
		return nil
	elsif list_of_nums.length == 1
		return list_of_nums[0]
	else
		i = 1
		max_num = list_of_nums[0].to_f
		while i < list_of_nums.length
			if max_num < list_of_nums[i].to_f
				max_num = list_of_nums[i].to_f
			else
				#print max number
			end
			i += 1
		end
		return max_num.to_int
	end
end