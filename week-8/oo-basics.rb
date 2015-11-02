# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize()   #Use named arguments!
    #your code here
  end

  def average
  	@avg = scores.inject(:+)/scores.length
  end

  def letter_grade
  	if @avg >= 90
  		'A'
  	elsif @avg >= 80
  		'B'
  	elsif @avg >= 70
  		'C'
	elsif @avg >= 60
		'D'
	else
		'F'
	end  			
  end

end

students = []
students[0] = Student.new
students[0].first_name = "Alex"
students[0].scores = [100,100,100,0,100]

def linear_search(array, first_name)
	ind = array.find_index {|item| item.first_name == first_name}
	if ind == nil
		-1
	else
		ind
	end
end

def binary_search(array, value)
	
end

# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# Reflection