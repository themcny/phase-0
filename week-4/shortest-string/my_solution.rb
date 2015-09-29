# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  if list_of_words.length == 0
    return nil
  elsif list_of_words.length == 1
    return list_of_words[0]
  else
    i = 0
    short_str = list_of_words[i]
    while i < list_of_words.length
      i += 1
      if short_str.length > list_of_words[i].length
        short_str = list_of_words[i]
      else
        return short_str
      end
    end
    return short_str
  end
end