module Shout
	def yell_angrily(words)
		p words + "!!!" 
	end

	def yell_happily(words)
		p words + " yay!!!"
	end 
end

class Mom
	include Shout
end 

class Cheerleader
	include Shout
end 

darlene = Mom.new
darlene.yell_angrily("Noelle") 

stacy = Cheerleader.new
stacy.yell_happily("Lets Go Jaguars")

# module Shout
# 	def self.yell_angrily(words) #the methods in standalone modules must be defined on the self keyword
# 		words + "!!!" + " :("
# 	end 

# 	def self.yell_happily(words)
# 		words + " yeeeehaw!!"
# 	end 
# end


# p Shout.yell_happily("Lets Go Cowboys")
# p Shout.yell_angrily("Dammit")