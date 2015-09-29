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