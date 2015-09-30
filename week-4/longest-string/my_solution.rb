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

=begin
  
IF list_of_words.length is 0 THEN
  return nil
ELSIF list_of_words.length is 1 THEN
  return list_of_words[0]
ELSE
  index = 0
  longest_string = list_of_words[index]
  WHILE index < list_of_words.length
    index = index + 1
    IF longest_string.length > list_of_words[index].length THEN
      longest_string = list_of_words[index]
    ELSE
      return longest_string
    ENDIF
  ENDWHILE
  return longest_string
ENDIF
  elsif list_of_words.length == 2
      if list_of_words[0].length < list_of_words[1].length
        return list_of_words[1]
      else
        return list_of_words[0]
      end
=end

def longest_string(list_of_words)
	if list_of_words.length == 0
    	return nil
  elsif list_of_words.length == 1
    	return list_of_words[0]
  else
    	i = 1
    	long_str = list_of_words[0]
    	while i < list_of_words.length
      		if long_str.length < list_of_words[i].length
        		long_str = list_of_words[i]
      		else
        		#return long_str
      		end
          i += 1
   		end
      return long_str
  	end
end