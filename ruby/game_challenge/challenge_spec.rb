require_relative 'game_challenge'

describe Game do 

	let(:hangman){ Game.new("liver")}

	it "stores the answer given by User 1 to an array" do
		expect(hangman.store_answer).to eq ["l","i","v","e","r"]
	end

	it "converts each item in the array to a '_'"  do
		expect(hangman.space_array(hangman.store_answer)).to eq ["_","_","_","_","_"]
	end

	it "fills in a space with each correct guess" do 
		expect(hangman.match(hangman.store_answer,"v")).to eq ["_","_","v","_","_"]

	end 
end
