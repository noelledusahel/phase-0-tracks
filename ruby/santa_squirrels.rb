class Santa

	def initialize(gender, ethnicity) # Santa class is passed 2 parameters on initialization, gender and ethnicity
		puts "initializing Santa instance"
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end


	def speak 
		puts "HO HO HO Haaaaapy Holidays!"
	end

	def eat_milk_and_cookies(flavor)
		puts "That was a good #{flavor} cookie!"
	end 


end

# jimbo = Santa.new
# jimbo.speak
# jimbo.eat_milk_and_cookies("choco chip")

## Release 1

