# Leap Years

# I worked on this challenge [with:].


# Your Solution Below
def leap_year?(year)
	if year%4 == 0
		if year%100 == 0 && year%400 != 0
			return false
		else
			return true
		end
	else
		return false		
	end
end