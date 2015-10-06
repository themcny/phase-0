# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [.5] hours on this challenge.

# 0. Pseudocode

# Input: integer amount of sides on a die object
# Output: either integer number of sides or random integer 
# Steps:


# 1. Initial Solution

#class Die
#  def initialize(sides)
#  	@sides = sides
#  end
#
#  def sides
#    return @sides
#  end
#
#  def roll
#    return rand(1..@sides)
#  end
#end



# 3. Refactored Solution

class Die
  def initialize(sides)
  	if sides < 1
  		raise ArgumentError
  	else
  	    @sides = sides
  	end
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end





# 4. Reflection
=begin
	
What is an ArgumentError and why would you use one?




What new Ruby methods did you implement? What challenges and successes did you have in implementing them?




What is a Ruby class?




Why would you use a Ruby class?




What is the difference between a local variable and an instance variable?




Where can an instance variable be used?




	
=end