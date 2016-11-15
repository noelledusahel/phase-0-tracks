require_relative 'hangman'

describe Hangman do 

	let(:game){ Hangman.new("liver")}

	it "stores the answer given by User 1 to an array" do
		expect(:game.store_answer).to eq ["l","i","v","e","r"]
	end

	it "converts each item in the array to a '_'"  do
		expect(:game.space_maker).to eq ["_","_","_","_","_"]
	end

	it "fills in a space with each correct guess" do 
		expect(:game.turn("v")).to eq ["_","_","v","_","_"]

	end 
end

