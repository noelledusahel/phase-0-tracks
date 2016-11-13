class Santa
	def initialize
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
	end

	def speak
		puts "Ho, Ho, Ho! Haaaaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "What a good #{cookie_type} cookie!"
	end


end

santa = Santa.new
santa.eat_milk_and_cookies("sugar")