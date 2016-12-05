
class Game
attr_reader :user_guess
attr_reader :answer
#write a class that handles user input
#and use driver code that asks for user input

# User 1 and User 2 (Optional)

	def initialize(answer)
		@answer = answer 
		@spaces = []
		@user_guess = answer.length
		@game_over = false
	end 

	def store_answer
		answer_array = @answer.split('')
		answer_array
	end 

	# temp = store_answer

	def space_array(array)
		array.length.times do |i|
			@spaces << "_"
		end 
		@spaces
	end 

def match(answer_array, letter)
			answer_array.each do |x|
				# if !answer_array.include?(x)
				# 	puts "wrong try again"
				# end
				if letter == x
					i = answer_array.index(x)
					@spaces[i] = letter
				end 
			end 
		@spaces
end 

end 


# puts "Place your bet Player 1, enter a word"
# 	answer = gets.chomp
# 	game1 = Game.new(answer)

# 	i = 0 
# until i == answer.length do
# puts "Player 2, Guess a Letter"
# 	guess = gets.chomp
# 	p game1.match(game1.store_answer, guess)
# 	if i >= answer.length then
# 		 break
# 	end
	# make this loop work!!!! use game_over
 

	

# p game1.store_answer
# p game1.space_array(game1.store_answer)
# p monopoly.match(monopoly.store_answer, "i")
# p game1.match(game1.store_answer, "e")
# p monopoly.match(monopoly.store_answer, "g")