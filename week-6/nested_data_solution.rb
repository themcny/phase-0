# I worked on this challenge [with Jeremy Powell]

# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array = number_array.map do |x|
  if x.is_a?(Fixnum)
    x += 5
  else
    x.map do |i|
      i += 5
    end
  end
end

p number_array



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

new_startup_names = startup_names.each do |x|
  if x.is_a?(Array)
    x.each do |y|
      if y.is_a?(Array)
        y.each do |z|
          z << "ly"
        end
      else
        y << "ly"
      end
    end
  else
    x << "ly"
  end
end

p new_startup_names

# Reflection:

=begin

What are some general rules you can apply to nested arrays?

To call an element in a nested array you navigate over the outer most array and 
work your way inwards index number by index number. You can initialize them literally
the same way you'd initialize a 1-D array. You can also initialize by using Array.new
with a block -> 'mulit_array = Array.new(8) {Array.new(8)}' (this will be 2D array)


What are some ways you can iterate over nested arrays?

You can manually iterate with a while loop (or a for loop) and check each element. Or
you can use the '.each' method and iterate over each array element (and manually check
to see if it's an array, string, or integer and then modify the element if wanted).
Additionally, there's the '.map' method which is destructive and iterates over the nested
array and returns the modified array.


Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

I was already familiar with the methods we used. We couldn't find any new methods that
were any more helpful or efficient than the ones we used.



=end