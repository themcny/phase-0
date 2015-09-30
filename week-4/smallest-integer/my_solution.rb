# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
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
	minimum_number = list_of_numbers[index_number] 
	WHILE index_number < list_of_numbers.length
		index_number = index_number + 1
		IF minimum_number > list_of_numbers[index_number] THEN
			minimum_number = list_of_numbers[index_number]
		ELSE
			minimum_number = minimum_number
		ENDIF
	ENDWHILE
	return minimum_number
ENDIF
		
=end

def smallest_integer(list_of_nums)
	if list_of_nums.length == 0
		return nil
	elsif list_of_nums.length == 1
		return list_of_nums[0]
	else
		i = 0
		min_num = list_of_nums[i].to_f
		while i < list_of_nums.length
			i += 1
			if min_num > list_of_nums[i].to_f
				min_num = list_of_nums[i].to_f
			else
			end
		end
		return min_num.to_int
	end
end