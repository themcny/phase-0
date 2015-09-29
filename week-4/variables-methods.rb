#Full Name Greeting
puts "What is your first name?"
first_name = gets.chomp
puts "Your middle name?"
middle_name = gets.chomp
puts "And your last name?"
last_name = gets.chomp
puts "Hello " + first_name + " " + middle_name + " " + last_name + "!"

#Bigger, Better Favorite Number
puts "Tell me your favorite number."
fav_num = gets.chomp.to_i
puts "Why don't you try #{fav_num + 1}, instead? It's bigger and better!"



=begin
How do you define a local variable?

Begin with starting the variable name (with either a lowercase letter or $). 
Then using the equals sign ('=') define the local variable.
e.g. a_variable = 4


How do you define a method?

def method_name(parameters)
	something_happens = parameters
	return something_happens
end

You can put anything on the 'something_happens = parameters' line.
It could be as simple as adding 1 to parameters or just returning parameters. 
It is the meat of the method so whatever you want your method to do, you write it
in the lines between 'def' and 'end'


What is the difference between a local variable and a method?

Methods are used to group together statements that a programmer may want to repeat over and over.
It allows the same piece of code to be executed multiple times without having to 
write that segment of code over and over and voer again.
Local variables are variables that can be used data within a method. 
Methods use local variables.


How do you run a ruby program from the command line?

ruby file/path/filename.rb


How do you run an RSpec file from the command line?

rspec file/path/filename.rb


What was confusing about this material? What made sense?

It pretty much all made sense. I remember a lot of this from doing the codeacademy.


Define Method Exercise: https://github.com/themcny/phase-0/blob/master/week-4/define-method/my_solution.rb
Address Exercise: https://github.com/themcny/phase-0/blob/master/week-4/address/my_solution.rb
Math Methods Exercise: https://github.com/themcny/phase-0/blob/master/week-4/math/my_solution.rb
=end