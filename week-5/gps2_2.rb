# I worked with Danielle Cameron.

# 1. Pseudocode

# Input: The input will be an item (string), qty (integer), list (hash)
# Create a new list that is a hash, key=item & value = qty
# Create a method that takes in item,qty and add them to the list
# Create a method that removes an item from the list
# Create a method that updates qtys on the list
# Create a method that prints the list

# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4



# 2. Inital Solution

# list = Hash.new

# def add_item(item, qty, list)
#   list[item]=qty
#   list
# end  

# def removes(item, list)
#   list.delete(item)
#   list
# end

# def updates(item, qty, list)
#   list[item] = qty
#   list
# end

# def print(list)
#   list.each do |item, qty|
#     p "We need #{qty} of #{item}"
#   end  
# end


# add_item("Ice Cream",4, list)
# add_item("Lemonade", 2, list)
# add_item('Onions', 1, list)
# add_item('Tomatoes', 3, list)

# removes('Lemonade', list)

# updates('Ice Cream', 1, list)

# print(list)


# 4. Refactored Solution

def grocery(command, list={})
	if command.downcase == 'create'
		list = {}  
	elsif command.downcase == 'add'
		p 'What item do you want to add?'
		item = gets.chomp
		p 'How many?'
		qty = gets.chomp
		list[item] = qty
	elsif command.downcase == 'remove'
		p "What item do you want to remove?"
		item = gets.chomp
		list.delete(item)
	elsif command.downcase == 'update'
		p "What item do you want to change the qty of?"
		item = gets.chomp
		p "Qty?"
		qty = gets.chomp 
		list[item]= qty
	elsif command.downcase == 'print'
    		list.each do |item, qty|
    	 		p "We need #{qty} of #{item}"
		end 	  
	else 
		raise ArgumentError.New("You didnt enter a correct command")   
	end      
end


# 5. Reflection

=begin

What did you learn about pseudocode from working on this challenge?

I learned that pseudocode can help break down a many parted problem into its basic elements.


What are the tradeoffs of using Arrays and Hashes for this challenge?

Arrays while ordered, cannot keep track of the association between two pieces of data.
With a hash, you can associate a value with a key and keep those two pieces of data
together so that when you access one, you can also access the matching data. 


What does a method return?

A method returns whatever value the user tells it to. It could return an entire hash, or
just a single key/value pairing. Ours returns our entire list.


What kind of things can you pass into methods as arguments?

Any kind of data (strings, integers, etc.) or collection of data (hash, arrays).


How can you pass information between methods?

By using a global variable and editing the value of that global variable.


What concepts were solidified in this challenge, and what concepts are still confusing?

Methods and flow control were solidified. There are no concepts that are still confusing.
Flow control was especially important for getting our refactored solution to work.



=end
