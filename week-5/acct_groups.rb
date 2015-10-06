# 0. Pseudocode

# What is the input? array - List of names
# What is the output? (i.e. What should the code return?) Hash - Key = Person's name and Value = Group Number
# What are the steps needed to solve the problem?


# 1. Initial Solution

def acct_groups(list_names)
	hash_groups = {}
	group_num = []
	if list_names.length%5 == 4
		num = list_names.length/5
		#num = how many groups of five
		#array of group numbers
		#array of names
		return #hash groups of five and one group of four
	elsif list_names.length%5 == 3
		if list_names.length > 10
			return #two groups of four and the rest groups of five
		else
			return #two groups of four
		end
	elsif list_names.length%5 == 2
		if list_names.length > 10
			return #three groups of four
		else
			return #group of three and group of four
		end
	elsif list_names.length%5 == 1
		if list_names.length > 15
			return # four groups of four
		elsif list_names.length < 15 && list_names.length > 10
			return # two groups of four and a group of three
		else
			return #return two groups of three
		end
	else #list_names.length%5 == 0
		return #hash where every five people is in a new group
	end
end

# 2. Add Complexity



# 3. Refactored Solution




# 4. Write Driver code




# 5. Reflection