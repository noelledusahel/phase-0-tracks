class Santa

	attr_accessor :gender, :ethnicity, :age 
#Here the Santa Class has been initialized, and the variables gender and ethnicity are passed in...
	def initialize(gender, ethnicity)
	# 	puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		#these could be used, but i chose not to use these santa defaults
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
		@santa_profile = []
	end

	def speak
		puts "Ho, Ho, Ho! Haaaaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "What a good #{cookie_type} cookie!"
	end

	def celebrate_birthday
		new_age = @age + 1
		puts "Santa is #{new_age} years old" 
	end

	def get_mad_at(reindeer_name)
		puts "Bad #{reindeer_name}!!"
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
		p @reindeer_ranking
	end

	def santa_generator(names, genders, ethnicities)
		@santa_profile << names.sample 
		@santa_profile << genders.sample 
		@santa_profile << ethnicities.sample

	end 
	#First the getter code
	# def age
	# 	@age
	# end 

	# def gender
	# 	@gender
	# end

	# def ethnicity
	# 	@ethnicity
	# end
	# then the setter code!
	# def gender= (new_gender)
	# 	@gender = new_gender
	# end 

	# def ethnicity= (new_ethnicity)
	# 	@ethnicity = new_ethnicity
	# end	
end

santa = Santa.new("agender","Ethiopian")

puts "Santa is a #{santa.ethnicity} #{santa.gender} person"


santa.gender = "lesbian"
santa.ethnicity = "white"

puts "Santa is a #{santa.ethnicity} #{santa.gender} person"

santa.get_mad_at("Dancer")
santa.celebrate_birthday


# Just created a list of names to assign gender and ethnicity attributes
names = ["Sammie Claus", "Tomas Claus", "Seva Claus", "Jamal Claus"]
genders = ["agender", "female", "bigender", "male"]
ethnicities = ["black", "Latino", "Indian", "Japanese-African"]
# #This is a list that will store the names and attributes of applicants to Regency Mall Santa Land 
santa.santa_generator(names, genders, ethnicities)
p @santa_profile

# diversity_file = []
# names.length.times do |i|
# 	diversity_file << Santa.new(genders[i], ethnicities[i])
# 	puts "Applicant No. #{diversity_file.length}, #{names[i]} is #{genders[i]}, and #{ethnicities[i]}"
# 	puts "-------"
# end



# create a method that has a santa generator which takes the arguments(number of santas, age, ethnicity, gender)
#generate a
#create a hash which has key values called Santa[0..i] and match them with an array [ethnicity, gender]






