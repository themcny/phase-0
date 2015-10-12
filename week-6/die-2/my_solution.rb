# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [.75] hours on this challenge.

# Pseudocode

# Input: an array - labels
# Output: 'sides' method returns an integer - (length of the array). 'roll' method returns a random array element.
# Steps:

# 1. Initialize the Die class
# => IF labels array is empty
# => RAISE ArgumentError
# => ELSE
# => define instance variable '@labels' and set it eql to the 'labels' array 
# 2. Define 'sides' method
# => RETURN an integer - the length of the array '@labels'
# 3. Define 'roll' method
# => RETURN an element of the array - whatever element at the randomly chosen index number

# Initial Solution

=begin

class Die
  
  def initialize(labels)
    if labels == []
      raise ArgumentError
    else
      @labels = labels
    end
  end

  def sides
    @num-sides = @labels.length
    return @num-sides
  end

  def roll
    index = rand(0...@num-sides)
    element = @labels[index]
    return element
  end

=end

# Refactored Solution

class Die
  def initialize(labels)
  	if labels == []
  		raise ArgumentError
  	else
  		@labels = labels
  	end
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[rand(0...@labels.length)]
  end
end


# Reflection

=begin
	
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

This one just needed to be able to return a random element for an array that could be populated
with strings or integers. So when 'rolling' the dice, rather than returning a random integer
I needed to use that random integer to return a random element at that index of the array.
There wasn't much change in the logic.


What does this exercise teach you about making code that is easily changeable or modifiable? 

It's a good lesson in making code that is flexible and easily changeable so that if things
change and a method needs to take slightly different input, it can without too much fuss.


What new methods did you learn when working on this challenge, if any?

I didn't learn any new methods.


What concepts about classes were you able to solidify in this challenge?
	
It helped me solidify how to write methods for classes and how to raise argument errors
when initializing the class. 



=end