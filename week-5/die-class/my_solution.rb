# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [.5] hours on this challenge.

# 0. Pseudocode

# Input: integer amount of sides on a die object
# Output: either integer number of sides or random integer 
# Steps:
# => IF there is less than one side THEN
# => => RAISE an Argument Error
# => ELSE
# => => allow the 'die' to be created with trait -size
# => ENDIF

# => When Sides is called (Die.sides) RETURN the number of sides
# => When rolled return a RANDOM number between 1 and # of sides.

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

It is an error that tells the user why their input won't work. You would use one to warn
a user that the way they're trying to use the class or method is incorrect. It could be
that the input is the wrong type or the wrong quantity or really anything that would cause
the class and/or subsequent methods to fail.


What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I used rand() in order to call a random number between 1 and sides. There wasn't too much
that could have gone wrong.


What is a Ruby class?

A class is like a framework that can be used to create an individual object. A class
can have traits (like how Die had sides) and can have functions (die can be rolled
to return a random number).


Why would you use a Ruby class?

It is useful to store many instances of data. For example, with a class Person, you can
store the name, hometown, age, and profession of all the persons in that class without
using a hash. You can also call methods on those persons (e.g. work, drive, eat, etc.).


What is the difference between a local variable and an instance variable?

Instance variables are available across methods for any instance or any object. 
Instance variables have an '@' before the variable name. They also change from object
to object.

Local variables are variables defined in a method and they're not available outside the 
method. They generally begin with lowercase letters or '_'


Where can an instance variable be used?

Within an instance of a class.


	
=end