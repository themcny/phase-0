# Virus Predictor

# I worked on this challenge [with: Josh Abrams].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
#
#


require_relative 'state_data'

#require_relative - finds a ruby file within the same folder as the spec file. It differs from require in that, require relative looks for a relative path and require looks for a direct link.


class VirusPredictor
  # initialize - creates an instance of the class with the given arguments and sets variables equal to those arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calls predicted_deaths and speed_of_spread methods with instance variables as arguments.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # calculating amount of deaths that the virus is expected to cause based on population density and it rounds that number down - then prints how many people the state will lose
#   def predicted_deaths
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end
  # defines a variable - speed, and depending on the population density, incrementally adds to speed. it then puts how fast the virus will spread across that state.
#   def speed_of_spread #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end


  def predicted_deaths
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 50
      number_of_deaths = (@population.to_f * ((@population_density / 50).to_f / 10)).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
   print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  
  def speed_of_spread
    speed = 2.5
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 50
      speed -= (@population_density/50).to_i * 0.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
  
end

STATE_DATA.each do |k, v|
  state = VirusPredictor.new(k, STATE_DATA[k][:population_density], STATE_DATA[k][:population])
  state.virus_effects
end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

=begin
  
What are the differences between the two different hash syntaxes shown in the state_data file?

One is the rocket and the other is using the colon. The difference is that with the rocket
the hash key can be a complicated string. With the colon, it automatically makes the key
a symbol so a complicated string (e.g. a string with spaces like "hello how") wouldn't work. 


What does require_relative do? How is it different from require?

Require relative looks for a ruby file of the name specified within the same folder
that the rspec file is in. Require relative looks at the path of the file relative to
where the rspec file is. Require would use a direct link (rather than a relative one) which
is prone to more errors if folders are being rearranged or moved around. 


What are some ways to iterate through a hash?

You can iterate through the hash by using various methods. Either the each_value which
iterates through the hash by value or each_key which iterates through the hash by key.
If you want to use both the key and the value you can use plain each or each_pair.


When refactoring virus_effects, what stood out to you about the variables, if anything?

There was no need to use the instance variables as arguments. The instance variable scope
is throughout the entire class for all of the methods, so you don't need to call the
instance variables as arguments since they can be accessed directly from the method code.


What concept did you most solidify in this challenge?

Our guide helped us solidfy the concept that readablity should be a big factor in our
refactoring process. Additionally, it helped me solidfy my ability to iterate through
the hash and through multidimensional hashes.


  
=end