# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of 16 numbers
# Output: Boolean
# Steps:

# Method - Initialize
# IF array is not 16 numbers long THEN
# RAISE ArgumentError
# ELSE
# 
# ENDIF


# Method 1
# Iterate over the array of numbers ->
# IF element index is even THEN
# double the element
# ELSE
# element stays the same
# ENDIF

# Method 2
# SUM all odd-indexed elements
# IF even element >= 10
# Split into two digits
# ELSE
# ENDIF
# Sum modified even-indexed elements


# Method 3
# sum everything
# IF sum %10 THEN
# RETURN true
# ELSE
# RETURN false
# ENDIF

# Method 4
# IF any methods return false
# RETURN false
# ELSE
# RETURN true
# ENDIF


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

=begin
class CreditCard
  
  def initialize(cc_number)
     cc = cc_number.to_s.split('')
    raise ArgumentError if cc.length != 16
    @num = cc_number.to_s.split('')
  end
  
  def check1
    14.downto(0).each do |index|
      if index.even?
        @num[index] =  Integer(@num[index]) * 2
      end 
    end
    @num
  end
  
  def check2
    15.downto(0).each do |index|
      if @num[index].to_i >= 10
        split_num = @num[index].to_s.split('')
        @num[index] = split_num[0].to_i + split_num[1].to_i
      end
    end
    @num.map!(&:to_i)
    @total = @num.reduce(:+)   
  end
  
  def check_card
    check1
    check2
    p @total % 10 == 0
  end
  
end

#cc = CreditCard.new(4563960122001999)
#cc.check_card

=end

# Refactored Solution

class CreditCard
  
  def initialize(cc_number)
    @num = cc_number.to_s.split('')
    raise ArgumentError if @num.length != 16
    
  end
  
  def check1
    14.downto(0).each do |index|
      if index.even?
        @num[index] =  @num[index].to_i * 2
      end 
    end
  end
  
  def check2
    
    15.downto(0).each do |index|
      if @num[index].to_i >= 10
        
        split_num = @num[index].to_s.split('')
        
        split_num.map!(&:to_i)
        @num[index] = split_num.reduce(:+)
        
      end
    end
    @num.map!(&:to_i)
    @total = @num.reduce(:+)   
  end
  
  def check_card
    check1
    check2
     
    p @total % 10 == 0
  end
  
end


# Reflection

=begin
	
What was the most difficult part of this challenge for you and your pair?
What new methods did you find to help you when you refactored?
What concepts or learnings were you able to solidify in this challenge?
	
=end