#HangMan
#attibutes
attr_accessor :answer :guess_count

class Hangman

def initialize
	puts “Starting the game of Hangman”
	puts “ User 1 will submit a word, and User 2 should try to guess the word”
	@answer = “ “
	@guess_count = 0
end

def space_maker(@answer)
spaces = @answer_word.split(‘’) # this will cut the answer in to an array. [“a”,”n”,”s”,”w”,”e”,”r”]
spaces.each do |i|
	space_array = i.replace(“_”) # this will replace the answer array with [“_”, “_”, “_”, “_”, “_”, “_”]
end 

def turn(User_guess) # this is in order to see if User # 2 makes a guess that matches one of the items in the array
	number_of_tries = answer.length
	while @guess_count < number_of_tries
			spaces.each do |i|
		if spaces(i) == guess
			space_array = i.replace(guess) # this repopulates the "_" with the User 2 guess
		end
		@guess_count += 1
	end 
end 


# answer2 = spaces.join(‘’)
end 

