# Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class RPNCalculator
  def evaluate(string)
  	@array = string.split(' ')

  	@operators = ["+","-","*","/"]
  	@calc = @array & @operators

  	i = @array.find_index(@calc[0])
  	@nums = @array[i-2, i]

  	p @array

  	if @array.length == 1
  		return string.to_i
  	elsif @calc[0] == '+'
  		p add
  		@array[i-2, i] = @eql
  	elsif @calc[0] == '-'
  		p subtract
  		@array[i-2, i] = @eql
  	elsif @calc[0] == '*'
  		p multiply
  		@array[i-2, i] = @eql
  	elsif @calc[0] == '/'
  		p divide
  		@array[i-2, i] = @eql
  	else
  		raise ArgumentError
  	end	

  	#p @calc
  	p @array
  	p @array.to_s
  	#p @index_operator
  	#p @nums

  end

  def add
  	@eql = (@nums[0].to_f + @nums[1].to_f).to_i
  end

  def subtract
  	@eql = (@nums[0].to_f - @nums[1].to_f).to_i
  end

  def multiply
  	@eql = (@nums[0].to_f * @nums[1].to_f).to_i
  end

  def divide
  	@eql = @nums[0].to_f / @nums[1].to_f
  end

end

calc = RPNCalculator.new

calc.evaluate('1 2 +')
calc.evaluate('2 5 *')
calc.evaluate('50 20 -')
calc.evaluate('70 10 4 + 5 * -')

# 4. Refactored Solution






# Reflection