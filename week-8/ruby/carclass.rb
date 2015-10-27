# Create a Car Class from User Stories


# I worked on this challenge [by myself].


# 2. Pseudocode



# 3. Initial Solution

class Car
	def initialize(model, color)
		@model = model
		@color = color
		@speed = 0
		@total_distance = 0
	end
	def drive(distance)
		@total_distance += distance.to_f
	end
	def speedometer()
		puts "Your speed is #{@speed}."
	end
	def turn(direction)
		@direction = direction
	end
	def accelerate(speed_limit)
		if goal_speed > @speed
			while goal_speed > @speed
				@speed -= 1
			end
		elsif goal_speed < @speed
			while goal_speed < @speed
				@speed += 1
			end
		else
			@speed
		end
	end
	def odometer()
		@total_distance
		puts "You have traveled #{@total_distance} miles."
	end
	def stop()
		@speed = 0
	end
	def last_action()
		#I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.
	end
end

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

my_car = Car.new('Subaru', 'Forester')
my_car.drive(.25)
my_car.accelerate(25)
my_car.stop
my_car.turn('right')
my_car.drive(1.5)
my_car.accelerate(35)
my_car.speedometer
my_car.accelerate(15)
my_car.drive(.25)
my_car.stop
my_car.drive(1.4)
my_car.accelerate(35)
my_car.stop
my_car.odometer

# 5. Reflection