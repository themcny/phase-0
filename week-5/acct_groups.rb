# 0. Pseudocode

# What is the input? array - List of names
# What is the output? (i.e. What should the code return?) Hash - Key = Person's name and Value = Group Number
# What are the steps needed to solve the problem?
# => 


# 1. Initial Solution

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

# 2. Add Complexity



# 3. Refactored Solution




# 4. Write Driver code




# 5. Reflection