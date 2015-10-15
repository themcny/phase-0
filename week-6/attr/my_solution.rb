#Attr Methods

# I worked on this challenge [by myself]

# I spent [1.5] hours on this challenge.

class NameData
	
	attr_reader :name
	def initialize
		@name = "Nicole"
	end

end


class Greetings

	def initialize
		@namedata = NameData.new
	end

	def hello
		puts "Hello " + @namedata.name + "! I hope you are well today."
	end

end


greet = Greetings.new
greet.hello


# Reflection

# Release 1
#
# What are these methods doing?
#
# It allows a user to input a name, occupation, and age in order to create a profile.
# 'change_my_age' takes an integer 'new_age' and assigns that trait to the 'Profile' class
# 'change_my_name' takes a string 'new_name' and assigns that trait to the 'Profile' class
# 'change_my_occupation' takes a string 'new_occupation' and assigns that trait to the 'Profile' class
# 'what_is_name' just returns the name string
# 'what_is_age' returns the age integer
# 'what_is_occupation' returns the occupation string
#
#
# How are they modifying or returning the value of instance variables?
#
# Modifying happens manually by inputting new values with the method 'change_my age', 
# 'change_my_name', and 'change_my_occupation'. The methods 'what_is_name','what_is_age', 
# and 'what_is_occupation' return the value of the instance variables.
#


# Release 2

# What changed between the last release and this release?
#
# There is now a line 'attr_reader :age'. The entire method 'what_is_age'
# has been taken out.


# What was replaced?
#
# The entire method 'what_is_age' has been taken out.


# Is this code simpler than the last?
#
# Yes. Rather than include the 'what_is_age' method, the 'age' can now be accessed by calling
# instance_of_profile.age. So a three line method has been replaced by a single line attr_reader
# variable.



# Release 3
#
# What changed between the last release and this release?
#
# Now there is a line 'attr_writer :age'. The entire method 'change_my_age'
# has been deleted. 
#
#
# What was replaced?
#
# The method 'change_my_age'.
#
#
# Is this code simpler than the last?
#
# Yes. Rather than another method, there is a single line that allows the user to change
# the age trait.
#
#
# 


=begin

What is a reader method?

Reader method means that the variable can be set within the program but the reader method
cannot be used to change the variable after it has been set. E.g. with 'attr_reader :age'
the user cannot use 'instance_of_profile.age = 13' to change the value of 'age'. Another
extra method is needed to change the age. 


What is a writer method?

It is a method that allows the user to change the variable even after it has been set. E.g.
with 'attr_writer: age' the user can use 'instance_or_profile.age = 13' to change the value
of age.


What do the attr methods do for you?

They allow you to return a trait without having to write a method who's only function is
to return age or name (or whatever trait you're trying to return).


Should you always use an accessor to cover your bases? Why or Why not?

Only if you want that variable to be editable by the user. So if there are variables that
should always stay constant and shouldn't be edited by the user. E.g. if your profile had
a trait, 'created_on', that trait shouldn't be editable. That instance of the profile
can only be created once.


What is confusing to you about these methods?

Now that I've read Chapter 3 of WGR I'm not confused.


=end