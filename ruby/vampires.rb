puts "How many employees are we processing today?"
applicants = gets.chomp.to_i

i = 0 
until i == applicants do

puts "What is your Name?"
	name = gets.chomp

puts "How Old Are You?"
	age = gets.chomp.to_i

puts "What year were you born?"
	year = gets.chomp.to_i
	now = 2016
	age_year = now - year
	now.class

	if age == age_year
		 age = true
		 puts "no lies"
	elsif age == age_year - 1
		age = true
		puts "no lies there"
	else 
		age = false
		puts "all lies"
	end

puts "Would you like some garlic bread? yes or no?"
	garlic = gets.chomp
puts "Would you like to enroll in our company's health insurance, yes or no ?"
	insurance = gets.chomp

if name == "Drake Cula" or name == "Tu Fang"
	puts "Definitely a Vampire"
elsif (age == true) && (garlic == "yes") && (insurance == "yes")
	puts "Answer: They are probably not a vampire then."
elsif (age == false) && (garlic == "no") && (insurance == "no")
	puts "They are most certainly a vampire"
elsif (age == false) && (garlic == "no" || insurance == "no")
	puts "Probably a vampire" 
else 
	puts "Results Inconclusive"
end

puts "Please list all allergies, hit enter after each allergy and type 'done' when finished"

allergy = ' '
allergy_list = []

while allergy != "done"
	allergy = gets.chomp
  allergy_list.push allergy
if allergy_list[-1] == "sunshine"
	puts "Vampire!"
	break
end
end

i += 1;
end

