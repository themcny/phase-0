# 0. Pseudocode

# What is the input? array - List of names
# What is the output? (i.e. What should the code return?) Hash - Key = Person's name and Value = Group Number
# What are the steps needed to solve the problem?

# => IF list of names is divisible by 5 THEN
# => RETURN list split into groups of 5

# => ELSIF list of names has a remainder of 1 THEN
# => => IF length of list of names is greater than 15 THEN
# => => RETURN 4 groups of 4 and the rest groups of 5
# => => ELSIF length is 11 THEN
# => => RETURN 2 groups of 4 and 1 group of 3
# => => ELSE length of list is 6 THEN
# => => RETURN 2 groups of 3
# => => ENDIF

# => ELSIF list of names has a remainder of 2 THEN
# => => IF length of list is greater than 10 THEN
# => => RETURN 3 groups of 4 and however many groups of 5
# => => ELSE length of list is 7 THEN
# => => RETURN 1 group of 4 and 1 group of 3
# => => ENDIF

# => ELSIF list of names has a remainder of 3 THEN
# => => IF length of list is greater than 10 THEN
# => => RETURN 2 groups of 4 and however many groups of 5
# => => ELSE length of list is 8 THEN
# => => RETURN 2 groups of 4
# => => ENDIF

# => ELSIF list of names has a remainder of 4 THEN
# => RETURN 1 groups of 4 and however many groups of 5

# => ENDIF

# 1. Initial Solution
=begin
def acct_groups(list_names)
	hash_groups = {}
	group_num = []
	num = list_names.length/5
	i = 1
	if list_names.length%5 == 4
		while i <= num
			(1..5).each do |x| 
		    	group_num.push(i)
			end
			i += 1
		end
		(1..4).each do |p|
			group_num.push(num+1)
		end
		group_num = group_num.shuffle!
		hash_groups = Hash[group_num.zip list_names]

		#num = how many groups of five
		#array of group numbers and shuffle this array
		#array of names
		#return hash groups of five and one group of four
	elsif list_names.length%5 == 3
		if list_names.length > 10
			while i <= num-1
				(1..5).each do |x| 
		    		group_num.push(i)
				end
				i += 1
			end
			while i <= num+1 
				(1..4).each do |p|
					group_num.push(i)
				end
				i += 1
			end
			group_num = group_num.shuffle!
			hash_groups = Hash[group_num.zip list_names]
			#return two groups of four and the rest groups of five
		else
			while i <= num+1
				(1..4).each do |x|
					group_num.push(i)
				end
				i += 1
			end
			group_num = group_num.shuffle!
			hash_groups = Hash[group_num.zip list_names]
			#return two groups of four
		end
	elsif list_names.length%5 == 2
		if list_names.length > 10
			while i <= num-2
				(1..5).each do |x| 
		    		group_num.push(i)
				end
				i += 1
			end
			while i <= num+1 
				(1..4).each do |p|
					group_num.push(i)
				end
				i += 1
			end
			group_num = group_num.shuffle!
			hash_groups = Hash[group_num.zip list_names]
			#return three groups of four
		else
			(1..4).each do |x|
				group_num.push(1)
			end
			(1..3).each do |x|
				group_num.push(2)
			end
			#return group of three and group of four
		end
	elsif list_names.length%5 == 1
		if list_names.length > 15
			while i <= num-2
				(1..5).each do |x| 
		    		group_num.push(i)
				end
				i += 1
			end
			while i <= num+1 
				(1..4).each do |p|
					group_num.push(i)
				end
				i += 1
			end
			group_num = group_num.shuffle!
			hash_groups = Hash[group_num.zip list_names]
			#return four groups of four
		elsif list_names.length < 15 && list_names.length > 10
			while i <= num
				(1..4).each do |x|
					group_num.push(i)
				end
				i += 1
			end
			(1..3).each do |x|
				group_num.push(i)
			end
			group_num = group_num.shuffle!
			hash_groups = Hash[group_num.zip list_names]
			#return two groups of four and a group of three
		else
			while i <= num+1
				(1..3).each do |x|
					group_num.push(i)
				end
				i += 1
			end
			group_num = group_num.shuffle!
			hash_groups = Hash[group_num.zip list_names]
			#return two groups of three
		end
	else #list_names.length%5 == 0
		while i <= num
			(1..5).each do |x| 
		    	group_num.push(i)
			end
			i += 1
		end
		group_num = group_num.shuffle!
		hash_groups = Hash[group_num.zip list_names]
	end
	return hash_groups #issue with the turning two arrays into a hash
end
=end
# 2. Add Complexity
# => added .shuffle so that a new accountability group is assigned every time acct_group
# => is called on a list of names


# 3. Refactored Solution

def acct_groups(list_names)
	hash_groups = {}
	group_num = []
	num = list_names.length/5
	i = 1
	if list_names.length%5 == 4
		while i <= num
			group_num = (i..num).flat_map {|x| [x]*5}
			i += 1
		end
		(1..4).each do |p|
			group_num.push(num+1)
		end
	elsif list_names.length%5 == 3
		if list_names.length > 10
			while i <= num-1
				group_num = (i..num-1).flat_map {|x| [x]*5}
				i += 1
			end
			while i <= num+1 
				(1..4).each do |p|
					group_num.push(i)
				end
				i += 1
			end
		else
			while i <= num+1
				(1..4).each do |x|
					group_num.push(i)
				end
				i += 1
			end
		end
	elsif list_names.length%5 == 2
		if list_names.length > 10
			while i <= num-2
				(1..5).each do |x| 
		    		group_num.push(i)
				end
				i += 1
			end
			while i <= num+1 
				(1..4).each do |p|
					group_num.push(i)
				end
				i += 1
			end
		else
			(1..4).each do |x|
				group_num.push(1)
			end
			(1..3).each do |x|
				group_num.push(2)
			end
		end
	elsif list_names.length%5 == 1
		if list_names.length > 15
			while i <= num-2
				(1..5).each do |x| 
		    		group_num.push(i)
				end
				i += 1
			end
			while i <= num+1 
				(1..4).each do |p|
					group_num.push(i)
				end
				i += 1
			end
		elsif list_names.length < 15 && list_names.length > 10
			while i <= num
				(1..4).each do |x|
					group_num.push(i)
				end
				i += 1
			end
			(1..3).each do |x|
				group_num.push(i)
			end
		else
			while i <= num+1
				(1..3).each do |x|
					group_num.push(i)
				end
				i += 1
			end
		end
	else #list_names.length%5 == 0
		while i <= num
			(1..5).each do |x| 
		    	group_num.push(i)
			end
			i += 1
		end
	end
	group_num = group_num.shuffle!
	hash_groups = list_names.zip(group_num).to_h
	return hash_groups #issue with the turning two arrays into a hash
end


# 4. Write Driver code

copperheads = [
"Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair",
"Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo",
"Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un CHoi",
"Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek",
"John Paul Chaufan Field", "Eric Freeburg", "Jeffery George",
"Jamar Gibss", "Paul Gaston Gouron", "Gabrielle Gustilo",
"Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez",
"Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim",
"James Kirkpatrick", "Christopher Lee", "Isaac Lee",
"Joseph Marion", "Kevin Mark", "Bernadette Masciocchi",
"Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill",
"Jeremy Powell", "Jessie Richardson", "David Roberts",
"Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith",
"Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe",
"Daniel Woznicki", "Jay Yee", "Nicole Yee", "Burno Zatta" ]

p acct_groups(copperheads)

# 5. Reflection

=begin
	
What was the most interesting and most difficult part of this challenge?

There were so many special cases for certain amounts of people. I had to figure out
the optimal way to split any length of list given to the computer without breaking
the rules (there had to be at least three people per group). It was also interesting
to figure out how to return two arrays as a combined hash.


Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes. I felt that my pseduocode actually helped for this challenge.


Was your approach for automating this task a good solution? What could have made it even better?

It was okay. It's still a bit clunky with the amount of if-elif-else statements and 
the number of for loops I used. I couldn't find a better way to deal with all the
special cases (especially for the low numbers). Using recusion would have probably
helped a bit.


What data structure did you decide to store the accountability groups in and why?

A hash so that we could access the person's name and their group number all at once.
Also if you knew the group number you could find out who was in that number and if you
knew the person's name you could find their group number easily. 


What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I used .zip to put the two arrays into a new multi-dimensional array that I then used 
.to_h to convert into a hash. I learned what things were common within all my if-else
statements and returned all those things at once at the end of the method instead of
returning the hash in every if-else statement.


	
=end