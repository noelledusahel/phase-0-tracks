class Santa
#Here the Santa Class has been initialized, and the variables gender and ethnicity are passed in...
	def initialize(gender, ethnicity)
	# 	puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		#these could be used, but i chose not to use these santa defaults
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

#Just created a list of names to assign gender and ethnicity attributes
names = ["Sammie Claus", "Tomas Claus", "Seva Claus", "Jamal Claus"]
genders = ["agender", "female", "bigender", "male"]
ethnicities = ["black", "Latino", "Indian", "Japanese-African"]
#This is a list that will store the names and attributes of applicants to Regency Mall Santa Land 
diversity_file = []

names.length.times do |i|
	diversity_file << Santa.new(genders[i], ethnicities[i])
	puts "Applicant No. #{diversity_file.length}, #{names[i]} is #{genders[i]}, and #{ethnicities[i]}"
	puts "-------"
end





