# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [.75] hours on this challenge.

# Pseudocode

# Input: an integer - 'answer'
# Output: for the 'guess' method return a symbol; for the 'solved?' return a boolean
# Steps:
# 1. Initialze the GuessingGame class
# => set input answer to equal the instance variable '@answer'
# 2. 'guess' method
# => IF guess is greater than answer THEN
# => => RETURN symbol 'high'
# => ELSIF guess is equal to answer THEN
# => => RETURN symbol 'correct'
# => ELSE guess is less than answer THEN
# => => RETURN symbol 'low'
# => ENDIF
# 3. 'solved?' method
# => IF guess is 'correct' THEN
# => => RETURN boolean - 'true'
# => ELSE guess is either high or low
# => => RETURN boolean - 'false'
# => ENDIF


# Initial Solution

=begin

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  		:high
  	elsif @guess == @answer
  		:correct
  	else
  		:low
  	end
  end

  def solved?()
  	if @guess == @answer
  		true
  	else
  		false
  	end
  end
end

=end



# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    if guess > @answer
      @symbol = :high
    elsif guess == @answer
      @symbol = :correct
    else
      @symbol = :low
    end
  end

  def solved?()
    if @symbol == :correct
      true
    else
      false
    end
  end
end




# Reflection
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) 
of a real-world object?

For example, let's say that there's a real world class 'Car'. Instance variables that are
defined in the 'initialize' method are akin to traits that define a car (e.g. 'make', 
'model', 'year', and 'amt_of_gas'). Methods are like the behaviors of the car (e.g. 'drive',
'park', and 'get_gas').


When should you use instance variables? What do they do for you?

If you want that variable to be defined within the entire scope of the class (over all
the methods included in this class) using an instance variable is a great idea. They 
make sure that the information stored in that variable can be accessed from any method
in the class so that you can manipulate the data according to whatever method you call.

For example, if you defined a variable 'amt_of_gas' for the 'Car' class seen above, you'd
want to be able to access that 'amt_of_gas' trait in the 'drive' or 'get_gas' method (where
'drive' subtracts some amount from 'amt_of_gas' and 'get_gas' adds some integer value to
the variable).


Explain how to use flow control. Did you have any trouble using it in this challenge? 
If so, what did you struggle with?




Why do you think this code requires you to return symbols? What are the benefits of 
using symbols?




=end