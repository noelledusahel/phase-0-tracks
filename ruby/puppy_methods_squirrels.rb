class Puppy

	def initialize
		puts "initializing puppy instance"
	end 

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy 
	end

	def speak(barks)
		barks.times do |x|
			p "Woof!"
		end 
	end 

	def roll_over
		puts "*rolls over*"
	end

	def dog_years(human_years)
		dog_years = human_years * 7
		dog_years
	end

	def detect_cancer(int)
		if int.even?
			cancer = false 
		else
			cancer = true
		end
		cancer
	end 
end 


jack = Puppy.new
jack.fetch("ball")
jack.roll_over	
jack.speak(5)
p jack.dog_years(3)
p jack.detect_cancer(4)
