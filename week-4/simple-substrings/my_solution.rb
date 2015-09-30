# Simple Substrings

# I worked on this challenge [by myself].


# Your Solution Below
=begin
IF string.include? "CA" THEN
	PRINT "Welcome to California"
ELSE
	PRINT "You should move to California"
ENDIF
=end

def welcome(string)
	if string.include? "CA"
		return "Welcome to California"
	else
		return "You should move to California"
	end
end
