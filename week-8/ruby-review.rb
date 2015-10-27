# Create a Car Class from User Stories


# I worked on this challenge [by myself].


# 2. Pseudocode

=begin
	
Create a class named car.

Initialize that class that takes two inputs (two variables), model (a string describing the
car's model) and color (a string describing the car's color).

Function that takes an integer input and sets the value 'distance' equal to that input.
Also adds that distance to the total distance value.

Function that displays the speed value of the car.

Function that sets a variable 'direction' to either left or right

Function that takes an integer input 'speed limit' and changes the speed variable 
(either up or down) so that the speed is equal to the speed limit.

Function that returns the total distance variable.

Function that changes the variable speed to 0, stopping the car.

Function that outputs a string describing the last method called on the car.

	
=end


# 3. Initial Solution
=begin
class Car
	def initialize(model, color)
		@model = model
		@color = color
		@speed = 0
		@total_distance = 0
		@last_called = ""
	end
	def drive(distance)		
		@last_called = 'drive'
		@total_distance += distance.to_f
	end
	def speedometer()
		@last_called = 'speedometer'
		puts "Your speed is #{@speed}."
	end
	def turn(direction)
		@last_called = 'turn'
		@direction = direction
	end
	def accelerate(speed_limit)
		@last_called = 'accelerate/decelerate'
		if speed_limit > @speed
			while speed_limit > @speed
				@speed -= 1
			end
		elsif speed_limit < @speed
			while speed_limit < @speed
				@speed += 1
			end
		else
			@speed
		end
	end
	def odometer()
		@last_called = 'odometer'		
		puts "You have traveled #{@total_distance} miles."
		@total_distance
	end
	def stop()
		@last_called = 'stop'
		@speed = 0
	end
	def last_action()
		puts "The last action you called is #{@last_called}."
	end
end
=end
# 4. Refactored Solution
$pizzas = []

class Car
	def initialize(model, color)
		@model = model
		@color = color
		@speed = 0
		@total_distance = 0
	end
	def drive(distance)
		@total_distance += distance.to_f
		@last_called = 'drive'
	end
	def speedometer()
		@last_called = 'speedometer'
		puts "Your speed is #{@speed}."
	end
	def turn(direction)
		@last_called = 'turn'
		@direction = direction
	end
	def accelerate(speed_limit)
		@last_called = 'accelerate/decelerate'
		@speed = speed_limit
	end
	def odometer()
		@last_called = 'odometer'
		@total_distance
		puts "You have traveled #{@total_distance} miles."
	end
	def stop()
		@last_called = 'stop'
		@speed = 0
	end
	def deliver()
		delivered = $pizzas.shift
		puts "You just delivered #{delivered} pizza."
	end
	def last_action()
		@last_called
		puts "The last action you called is #{@last_called}."
	end
end

class SinglePizza
	def initialize(type) #type should be a string describing the type of pizza
		@pizza = type + ", "
	end
	def add_topping(topping)
		topping = topping + ", "
		@pizza << topping
	end
	def load_pizza()
		$pizzas.push(@pizza)
	end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
pizza1 = SinglePizza.new('meat lovers')
pizza1.add_topping('mushrooms')
pizza1.load_pizza

pizza2 = SinglePizza.new("vegetarian")
pizza2.add_topping("extra cheese")
pizza2.load_pizza

pizza3 = SinglePizza.new("gluten-free")
pizza3.add_topping("peppers")
pizza3.add_topping("pinapple")
pizza3.load_pizza

my_car = Car.new('Subaru', 'Forester')
my_car.drive(0.25)
my_car.accelerate(25)
my_car.stop
my_car.turn('right')
my_car.drive(1.5)
my_car.accelerate(35)
my_car.speedometer
my_car.accelerate(15)
my_car.drive(0.25)
my_car.stop
my_car.drive(1.4)
my_car.accelerate(35)
my_car.stop
my_car.deliver
my_car.odometer
my_car.last_action

# 5. Reflection
=begin

What concepts did you review or learn in this challenge?

I reviewed how to make a class and the use of global, instance, and local variables.
I learned how to use a global variable so that I can access that variable across
multiple classes.


What is still confusing to you about Ruby?

There's nothing that I found particularly confusing. It was weird to come back to ruby
after a week in JavaScript. I'm still in the habit of adding semi-colons after every line
and var infront of every variable. Also getting back to so many built in methods was nice.


What are you going to study to get more prepared for Phase 1?

I think I'm going to study inheritance and scope. I'm still not always sure what the best
type of variable is for certain situations. 



=end