# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Steven Broderick].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array
# Output: total
# Steps to solve the problem.
# total = 0
# array.EACH do |i|
# => total = total + i
#end
#RETURN total

# 1. total initial solution

#def total(array)
#	total = 0
#	array.each do |i|
#		total += i
#	end
#	return total
#end

# 3. total refactored solution
def total(array)
	return array.inject(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array
# Output: sentence
# Steps to solve the problem.
# setence = ""
# array.EACH do |i|
# => sentence = sentence + i.to_s + " "
# end
# RETURN sentence + "."

# 5. sentence_maker initial solution


#def sentence_maker(array)
#	sentence = ""
#	array[0] = array[0].capitalize
#	array.each do |i|
#		sentence = sentence + i.to_s + " "
#	end
#	return sentence.strip + "."
#end

# 6. sentence_maker refactored solution
def sentence_maker(array)
	array[0] = array[0].capitalize
	return array.join(" ") + "."
end