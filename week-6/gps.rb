# Your Names
# 1) Nicole Yee
# 2) Joe Marion

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.
=begin
def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  library.each do |food|
    if library[food] != library[item_to_make]
      p error_counter += -1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0]
  serving_size_mod = order_quantity % serving_size

  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)
=end


# Refactored
=begin
def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  if library.has_key?(item_to_make) 
    
    serving_size = library[item_to_make]
 

    if order_quantity % serving_size == 0
      return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
    else
      return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{order_quantity % serving_size} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
    end
    
    
  else
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  
  
end


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)
=end

# New Stuff

def serving_size_calc()
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  puts "What would you like to make?"
  item_to_make = gets.chomp!.downcase
  puts "How much dough do you have?"
  order_quantity = gets.chomp!.to_i
  
  if library.has_key?(item_to_make) 
    
    serving_size = library[item_to_make]
    leftovers = order_quantity % serving_size

    if leftovers == 0
      puts "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}(s)!"
    elsif leftovers > 4
      s_leftovers = leftovers - 5
      print "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}(s), you have #{leftovers} leftover ingredients. Suggested baking items: A cake"
      if s_leftovers > 0
        print " and #{s_leftovers} cookie(s)!"
      end
    else
      puts "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}(s), you have #{leftovers} leftover ingredients. Suggested baking items: #{leftovers} cookie(s)!"
    end
    
    
  else
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  
  
end

serving_size_calc

#  Reflection

=begin

What did you learn about making code readable by working on this challenge?



Did you learn any new methods? What did you learn about them?



What did you learn about accessing data in hashes? 




What concepts were solidified when working through this challenge?




=end