# Introduction to Inheritance

# I worked on this challenge [by myself].


# Pseudocode




# Initial Solution

class GlobalCohort
	def initialize()
		@name = name
		@students = [] #array of all students names
		@p0_start_date = #date as an array
		immersive_start_date
		graduation_date
		@email_list = #hash? names and email addresses
		@num_of_students = students.length
	end

	def add_student(student_name)
		@students.push(student_name)
	end

	def remove_student(student_name)
		@students.delete_if {|drop| drop == student_name}
	end

	def currently_in_phase
		today = Time.now.to_a
		today[3,3]
		#look up dates and times
	end

	def graduated?
		#checks if after graduation date
	end

end

class LocalCohort < GlobalCohort
	def initialize(location)
		@location = location
		@students = #[array of local students]
		@email_list = #just local email addresses
	end

end


# Refactored Solution





# Reflection