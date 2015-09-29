# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
	if list_of_words.length == 0
    	return nil
  	elsif list_of_words.length == 1
    	return list_of_words[0]
  	else
    	i = 0
    	long_str = list_of_words[i]
    	while i < list_of_words.length
      	i += 1
      		if long_str.length < list_of_words[i].length
        		long_str = list_of_words[i]
      		else
        		return long_str
      		end
   		end
    return long_str
  	end
end