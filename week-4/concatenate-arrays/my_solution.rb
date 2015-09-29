# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

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