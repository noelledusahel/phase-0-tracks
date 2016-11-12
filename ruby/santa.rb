class Santa

	def speak
		puts "Ho, Ho, Ho! Haaaaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "What a good #{cookie_type} cookie!"
	end

	def initialize
		puts "Initializing Santa instance..."
	end
end

santa = Santa.new
santa.eat_milk_and_cookies("sugar")