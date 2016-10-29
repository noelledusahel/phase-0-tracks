puts "How Old Are You?"
	age = gets.chomp.to_i

 puts "you're #{age} years old?? Oh yeah ... What's your name?"
	name = gets.chomp

puts "Hey #{name}! Great to meet you. Oh Yea what year were you born?"
	year = gets.chomp.to_i
	
	if age == 2016 - year
		age = true
		#puts "cool!"
	elsif age < 2016 - year
		age = false
		#puts "probably a vampire"
	else 
		age = false
		#puts "Why lie about your age?"
	end

puts "Hey let me treat you to lunch! Its Italy day at the cafeteria would you like some garlic bread? yes or no?"
	garlic = gets.chomp

	if garlic == "yes"
		garlic = true
		#puts "right on, my treat!"

	elsif garlic == "no"
		garlic = false
		#puts "probably a vampire"
	end

puts "Would you like to enroll in our company's health insurance?"

	insurance = gets.chomp

	if insurance == "yes"
		insurance = true
		#puts "OK! Go see HR"
	elsif insurance == "no"
		insurance = false
		#puts "probably a vampire"
	else 
		#puts "you need to make a decision, yes or no?"
	end

if age && garlic && insurance
	puts "Answer: They are probably not a vampire then."
elsif !age && !garlic && !insurance
	puts "Answer: They are most certainly a vampire."
end