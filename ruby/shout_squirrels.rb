module Shout
	def self.yell_angrily(words) #the methods in standalone modules must be defined on the self keyword
		words + "!!!" + " :("
	end 

	def self.yell_happily(words)
		words + " yeeeehaw!!"
	end 
end


p Shout.yell_happily("Lets Go Cowboys")
p Shout.yell_angrily("Dammit")