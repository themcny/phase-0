# 0. Pseudocode

# What is the input? array - List of names
# What is the output? (i.e. What should the code return?) Hash - Key = Person's name and Value = Group Number
# What are the steps needed to solve the problem?
# => 

=begin
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
=end

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
		group_num = group_num.shuffle!
		hash_groups = Hash[group_num.zip list_names]

		#num = how many groups of five
		#array of group numbers and shuffle this array
		#array of names
		#return hash groups of five and one group of four
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


# 4. Write Driver code




# 5. Reflection