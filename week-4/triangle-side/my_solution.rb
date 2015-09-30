# I worked on this challenge [with: Peter Wiebe ].


# Your Solution Below

def valid_triangle?(a, b, c)
	if a == 0 || b == 0 || c == 0
		return false
	elsif (a+b)<c || (a+c)<b || (b+c)<a
		return false
	else
		return true
	end			
end