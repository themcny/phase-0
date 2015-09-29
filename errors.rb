# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
	while true
    	puts "What's there to hate about #{thing}?"
    end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => Line 16.
# 3. What is the type of error message?
# => Syntax Error
# 4. What additional information does the interpreter provide about this type of error?
# => Unexpected end of input, expecting keyword_end
# 5. Where is the error in the code?
# => Another end is needed to end the method.
# 6. Why did the interpreter give you this error?
# => The first 'end' ended the while loop but there was no 'end' to the method. 

# --- error -------------------------------------------------------

south_park = "T.V. Show"

# 1. What is the line number where the error occurs?
# => Line 36
# 2. What is the type of error message?
# => in `<main>'
# 3. What additional information does the interpreter provide about this type of error?
# => undefined local variable or method `south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# => south_park was never defined as anything. It has no data assigned to it.
# 5. Why did the interpreter give you this error?
# => south_park needs to be assigned some data - e.g. 'south_park = 3' or 'def south_park() end'

# --- error -------------------------------------------------------

def cartman()
	puts "Fat Kid"
end

# 1. What is the line number where the error occurs?
# => Line 51
# 2. What is the type of error message?
# => in `<main>'
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method `cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
# => The method 'cartman' was never defined.
# 5. Why did the interpreter give you this error?
# => 'cartman' needs to be defined like 'def cartman() end'

# --- error -------------------------------------------------------

def cartmans_phrase(offensive_message)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => Line 68
# 2. What is the type of error message?
# => in `cartmans_phrase'
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 0) (ArgumentError)
# 4. Where is the error in the code?
# =>Rather than just "def cartmans_phrase" the first line needs to be "def cartmans_phrase(message)" in order for the input on line 69 to work. 
# 5. Why did the interpreter give you this error?
# => When defining the method, the programmer needs to tell the computer how many arguments the method will take.

# --- error -------------------------------------------------------

def cartman_says()
  puts "Something offensive."
end

cartman_says

# 1. What is the line number where the error occurs?
# => Line 87
# 2. What is the type of error message?
# => in `cartman_says'
# 3. What additional information does the interpreter provide about this type of error?
# =>  wrong number of arguments (0 for 1) (ArgumentError)
# 4. Where is the error in the code?
# => The brackets can just be empty, this method doesn't need to take any arguments.
# 5. Why did the interpreter give you this error?
# => Because we told the computer there'd be an argument when calling this method but when it was called there was no arugment called with it.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Stan")

# 1. What is the line number where the error occurs?
# => Line 108
# 2. What is the type of error message?
# => in `cartmans_lie'
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 2) (ArgumentError)
# 4. Where is the error in the code?
# => Well either the number of inputs in the method has to change or in line 112 an additional argument must be added when the method is called.
# 5. Why did the interpreter give you this error?
# => Because in Line 112 when the method is called, there is a discrepancy between the number of inputs given (1) and the number of inputs expected (2)

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => Line 127
# 2. What is the type of error message?
# => in `*'
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coerced into Fixnum (TypeError)
# 4. Where is the error in the code?
# => It's that a Fixnum or integer can't be multiplied by a string because that string can't be made into an integer with the code written.
# 5. Why did the interpreter give you this error?
# => Because trying to multipy an integer by a string doesn't work. If you want to print the string five times then the order needs to be switched so the string comes first followed by the integer.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => Line 142
# 2. What is the type of error message?
# => in `/'
# 3. What additional information does the interpreter provide about this type of error?
# =>  divided by 0 (ZeroDivisionError)
# 4. Where is the error in the code?
# => You can't divide by zero since there is no answer.
# 5. Why did the interpreter give you this error?
# => Because in trying to define amount_of_kfc_left the person who wrote the code divided 20 by 0. Which is impossible to give a value to.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => Line 158
# 2. What is the type of error message?
# => in `require_relative'
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file -- C:/Users/Tinky/Desktop/phase-0/cartmans_essay.md (LoadError)
# 4. Where is the error in the code?
# => The interpreter could not find a file named "cartmans_essay.md" in the relative path described.
# 5. Why did the interpreter give you this error?
# => Because the file it tried to load doesn't exist so it can't be loaded.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
	
Which error was the most difficult to read?

The last one 'cannont load such file' since it doesn't tell the user why that file cannot be loaded.
There is no specification if the path is bad or if the file doesn't exist.


How did you figure out what the issue with the error was?

Logically, I knew that file didn't exist because I never created that file.


Were you able to determine why each error message happened based on the code? 

Yes, once I got used to reading the syntax of the error message it got easier
to parse why the error occured and why kind of fixes I would have to make.


When you encounter errors in your future code, what process will you follow to help you debug?

I think following the process we practiced above will definitely help (albeit I'll do it mentally).
Looking over the error message piece by piece will definitely help. 


=end