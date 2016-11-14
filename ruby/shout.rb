

module Shout

	def yell_angrily(words)
		puts words + "!!!" 
	end

	def yell_happily(words)
		puts words + "!!! :D !!!"
	end
	#we'll put some methods here soon, but this code is fine for now!
	# def self.yell_angrily(words)
	# 	words + "!!!" + ":("
	# end 

	# def self.yell_happily(words)
	# 	words + "!!!" + ":D"
	# end 
end

class Happy_birthday
	include Shout
end

greeting = Happy_birthday.new
greeting.yell_happily("Yay")
greeting.yell_angrily("Dammit")
# p Shout.yell_angrily("Hey")
# p Shout.yell_happily("I Love You")