class Puppy

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy 
	end
end 


jack = Puppy.new
jack.fetch("ball")	