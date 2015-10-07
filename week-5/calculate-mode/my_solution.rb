# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Parminder Singh]

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
#
# What is the input? 
# An array of strings or numbers

# What is the output? (i.e. What should the code return?) 
# an array of the most frequent values


# What are the steps needed to solve the problem?

# Create new_hash to store key(int or string)/value(the count) pairs
# FOR each element of the input
# => FOR a single element
# => IF array element == current element
# => count += 1
# => ELSE
# => ENDIF
# => new_hash [array element] = count
# => count = 0
# => ENDFOR
# ENDFOR
# RETURN key of the max value (count)

# 1. Initial Solution
=begin

def mode(array)
  hash = {}
  for i in 0...array.length
    count = 0
    current_element = array[i]
    for i in 0...array.length
      if current_element == array[i]
        count += 1
      else
      end
      hash[current_element] = count
    end
  end
  max_array = []
  hash.each {|key, value| (max_array.push(key)) if value == hash.values.max }
  return max_array
end

=end



# 3. Refactored Solution

def mode(array)
  hash = {}

  for i in 0...array.length
    hash[array[i]] = array.count(array[i])    
  end

  max_array = []
  hash.each {|key, value| (max_array.push(key)) if value == hash.values.max }

  return max_array
  
end


# 4. Reflection

=begin

Which data structure did you and your pair decide to implement and why?

We used a hash because that way we could keep track of the count for each individual array
element. The key/value pair of an array allows us to keep track of both the elements of the
array and the count in the same place rather than having two separate arrays to deal with.


Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

Since this problem was a little more complicated there was more to break down so our
pseudocode was actually useful this time. We were able to break it down into the
individual steps pretty successfully.


What issues/successes did you run into when translating your pseudocode to code?

We had an issue returning an array of the maximum. It was particularly difficult
to get it to work when there were two keys that appeared most frequently. For
a while we could only get the first most frequent key to appear. Eventually, we
figured out how to gather all the keys for the maximum value (count) and return an
entire array.


What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We used a for loop and an .each method. In our refactored solution we also used the 
.count method. The .count was particularly useful because it allowed us to count 
the values without having to write another for loop. Honestly, our original double for
loop was harder to implement than the .count and the .each methods.


=end