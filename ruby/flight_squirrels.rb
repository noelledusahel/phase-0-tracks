module Flight
	def take_off(altitude)
		puts "Taking off and ascending until reaching #{altitude}..."
		# when writing a module as a mixin to add instance methods to a class we dont use self keyword
	end
end 

class Bird
	include Flight
end

class Plane
	include Flight
end

bird = Bird.new
bird.take_off(800)

place = Plane.new
place.take_off(30000)