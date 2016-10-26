puts "How Old Are You?"
	age = gets.chomp.to_i

puts "you're #{age} years old?? Oh yeah ... What's your name?"
	name = gets.chomp

puts "Hey #{name}! Great to meet you. Oh Yea what year were you born?"
	year = gets.chomp.to_i
	
	if age == 2016 - year
		puts "cool!"
	elsif age < 2016 - year
		puts "probably a vampire"
	else 
		puts "Why lie about your age?"
	end

puts "Hey let me treat you to lunch! Its Italy day at the cafeteria would you like some garlic bread? yes or no?"
	garlic = gets.chomp

	if garlic == "yes"
		puts "right on, my treat!"

	elsif garlic == "no"
		puts "probably a vampire"
	else 
		puts "wait what did you say? yes or no?"
	end

puts "Would you like to enroll in our company's health insurance?"

	insurance = gets.chomp

	if insurance == "yes"
		puts "OK! Go see HR"
	elsif insurance == "no"
		puts "probably a vampire"
	else 
		puts "you need to make a decision, yes or no?"
	end