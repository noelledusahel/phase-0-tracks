class Santa
	attr_reader :age , :ethnicity
	attr_accessor  :gender

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

	def celebrate_birthday
		happy_birthday = @age + 1
		@age = happy_birthday
	end 

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.push(reindeer_name)
		@reindeer_ranking
	end 

	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end



end

jimbo = Santa.new("agender", "white")
p jimbo.celebrate_birthday
p jimbo.celebrate_birthday
p jimbo.get_mad_at("Dancer")
p jimbo.get_mad_at("Rudolph")
p jimbo.age
p jimbo.gender 
jimbo.gender = "gay"
p jimbo.gender
# jimbo.speak
# jimbo.eat_milk_and_cookies("choco chip")

## Release 1
santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# example_genders.length.times do |i|
# 	santas << Santa.new(example_genders[i], example_ethnicities[i])
# end 
# example_genders.length.times do |i|
# 	santas << Santa.new(example_genders[i].next, example_ethnicities[i].upcase)
# # end 
# p santas

# @reindeer_ranking.each do |i|
# 	puts "#{i} has a santa"
# end 

# Release 4 
#Create a Santa Generator
#input: our arrays for genders and ethnicities. Also age will be a random number between 1-140
#result: a hash or severla arrays

# santa = Santa.new 
age = (1..140).to_a

def santa_generator(age, genders, ethnicities)
	santas_profile = []
	santas_profile << age << genders << ethnicities
	p santas_profile
end 

i = 100
i.times do |x|
	x = santa_generator(age.sample, example_genders.sample, example_ethnicities.sample )
end 








