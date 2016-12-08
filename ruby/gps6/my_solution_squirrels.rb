# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative

require_relative 'state_data'

class VirusPredictor

#initialize passes the elements of the STATE_DATA hash in to each new instance. 
#sets instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# this method triggers both predicted deaths and speed of spread to run. 
# I removed the arguments, because both of these methods just use instance variables,  data that is already available to the class
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

 
  def state_report(state_data)
      state.data.each do |state_name, state_info|
        # number = predicted_deaths(state_info[0], state_info[1], state_name)
        # speed = speed_of_spread(state_info[0], state_name)
        state = VirusPredictor.new(state_name, state_info[:population_density],state_info[:population] )
        #puts "#{state_name} will loose #{number} people in this outbreak and will spread across the state in #{speed}. "
        state.virus_effects
      end 
  end 
#private methods can only be accessed by within the class object
  private
#input is elements of STATE_DATA hash, output is a integer representing
#the number of predicted deaths. .floor rounds the number down. the return value is number_of_deaths
   def death_percentage(num)
    (@population * num).floor
  end #created a method that would calculate number of deaths and take percentage as an argument. 

  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = death_percentage(0.4)
    elsif @population_density >= 150
      number_of_deaths = death_percentage(0.3)
    elsif @population_density >= 100
      number_of_deaths = death_percentage(0.2)
    elsif @population_density >= 50
      number_of_deaths = death_percentage(0.1)
    else
      number_of_deaths = death_percentage(0.05)
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#passes in the population desity to return a float called speed. speed starts at 0 and
#is increased by a set value depending on where the states population density falls
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
  # refactoring of speed_of_spread took # speed out of the if confiditional statement and set the return value for each statement to speed just once 

   speed = if @population_density >= 200
    			0.5
    		elsif @population_density >= 150
    			1
    		elsif @population_density >= 100
       			1.5
    		elsif @population_density >= 50
      			 2
    		else
      			2.5
    		end
	puts " and will spread across the state in #{speed} months.\n\n"
  end 
end

#=======================================================================
def state_report(state_data)
      state_data.each do |state_name, state_info|
        # number = predicted_deaths(state_info[0], state_info[1], state_name)
        # speed = speed_of_spread(state_info[0], state_name)
        state = VirusPredictor.new(state_name, state_info[:population_density],state_info[:population] )
        #puts "#{state_name} will loose #{number} people in this outbreak and will spread across the state in #{speed}. "
        state.virus_effects
      end 
  end 
# DRIVER CODE
 # initialize VirusPredictor for each state

state_report(STATE_DATA)

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
# STATE_DATA is a hash constant. It's defined in capital letters and is meant to be unchanged
# it also is a parent hash for a number of smaller hashes.
# require relative finds a file in the same root directory and imports it's data
# require is used for importing libraries 
# One way to iterate through a hash is to use a .each statement, and pass the key and value in as parameters
# Another way to iterate through a hash is to use .each_key, .each_value .each_pair 
# When refactoring virus effects, I saw that the variables had already been passed in to the class and were 
# already available to all methods in the class on initialization. I saw that there was no need to pass those same variables again through the method. 
# concepts that I solidified in this challenge include: refactoring a method to make it more dry, recognizing which variables are available and where they are available
# I also solidified my understanding of how to iterate through a hash 


