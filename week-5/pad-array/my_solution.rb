# Pad an Array

# I worked on this challenge [with: Max Iniguez]

# I spent [.75] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? 
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

#Input: list of numbers, a minimum length of the list, and a value to pad the list with
#Output: a new expanded list


# Steps Needed to Solve Problem:

# IF min_size is less than the length of the list of numbers, 
# RETURN list of numbers
# ELSE
# WHILE the minimum length is greater than the length of the list of numbers
# => add the value parameter to the list of numbers
# ENDWHILE
# RETURN list of numbers
# ENDIF

# 1. Initial Solution

=begin
def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length
    return array
  else
    while min_size > array.length
      array.push(value)
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each do |x|
  	new_array.push(x)
  end
  if min_size <= new_array.length
    return new_array
  else
    while min_size > new_array.length
      new_array.push(value)      
    end
    return new_array
  end
end
=end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length
    return array
  else
    while min_size > array.length
      array.push(value)
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.map { |x| x }
  if min_size <= new_array.length
    return new_array
  else
    while min_size > new_array.length
      new_array.push(value)      
    end
    return new_array
  end
end

# 4. Reflection
=begin
	
Were you successful in breaking the problem down into small steps?

Yes. This problem was easy to break down into simpler steps. First by thinking about 
how to 'move' through an array. Also by thinking about exactly what traits of the array 
we wanted to know about and modify.


Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

It was easy to translate into a destructive method. We had a little more trouble getting 
it to translate into a non-destructive method since push by its nature modifies the array 
in place. Once we figured out that .push modifies the array in place, we knew that we 
had to create a new array that would be the same as the input array so that the new array
could be modified in place without destroying the input array.


Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

It passed all the tests except the test for a non-destructive method. We'd broken down
the problem well enough that our initial solution's code reflected that simplicity. Since
we didn't try any super complicated built-in methods, it wasn't difficult to get a working
program.


When you refactored, did you find any existing methods in Ruby to clean up your code?

Yes. We found that the map method could do exactly what an [each-do] loop was doing for us
more simply. It didn't require initializing an empty array and then populating that
array by iterating over the old array one element at a time.


How readable is your solution? Did you and your pair choose descriptive variable names?

Our solution is pretty readable. We used descriptive variable names (like new_array
to describe a new array).


What is the difference between destructive and non-destructive methods in your own words?

Destructive methods modify the input directly. So the original input of the method
is returned after it is modified and the original input cannot be accessed as it 
was prior to running the method. 

Non-destructive methods do not modify the input directly. So even after calling a method
on an input, that original input can be accessed in its unmodified form. The method
returns an output that isn't just the modified input it's a whole new set of data.


	
=end