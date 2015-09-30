# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

=begin

concatenated_array = [] #initilizing a new array to store the concatenated array
index_1 = 0
WHILE index_1 < array_1.length
	new_array[index_1] = array_1[index_1]
	index = index + 1
ENDWHILE

index_2 = 0
WHILE index_2 < array_2.length
	new_array[index_1+index_2] = array_2[index_2]
	index_2 = index_2 + 1
ENDWHILE
return concatenated_array

=end

def array_concat(array_1, array_2)
	new_array = []
	i = 0
	while i < array_1.length
		new_array[i] = array_1[i]
		i += 1
	end
	j = 0
	while j < array_2.length
		new_array[i+j] = array_2[j]
		j += 1
	end
	return new_array
end