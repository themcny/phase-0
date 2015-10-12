# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [.75] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

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




# Refactored Solution






# Reflection
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?




When should you use instance variables? What do they do for you?




Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?




Why do you think this code requires you to return symbols? What are the benefits of using symbols?




=end