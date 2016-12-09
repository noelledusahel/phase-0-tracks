	$original_name = ' '
	$alias_storage = []


	def name_encoder# the method without taking a string as  parameter
		until $original_name == "q" do # original name is an empty string, this initiates a loop until Original == q
		puts "Welcome to the Name Encorder Program"
		puts "Enter a name you would like to encrypt, type 'q' to quit"
			$original_name = gets.chomp #user input
			two_part_name = $original_name.split(' ') # splits the name in to two items in an array called two_part_name
			two_part_name = two_part_name.reverse    # reverse item order in two part name array
			name_array = two_part_name.join(' ').chars
			new_name_array = []
			
			vowel_hash ={"a"=>"e", "e" => "i", "i" => "o", "o"=>"u"}

			name_array.each do |i|
			# num = 0 
			# while num < name_array.length
				if i == " " # if the array item is empty
					new_name_array << " " # add an empty space to the new array
				elsif i =~ /[aeiou]/ # if the array item matches either of these
					new_name_array << vowel_hash[i] # add the value at associated with the key that matches the vowel
				else
					new_name_array << i.next #otherwise run .next on the item
				end 	
			end 
			$alias_storage << new_name_array.join('') # return new array 	
			$alias_storage
			if $original_name == "q"
				puts "Thank You!"
				$alias_storage.pop #remove the item added to the arraw 'q'
				p $alias_storage #return this array without index [-1]
				break
			else
			p $alias_storage
			end
		end 
		  
	end 
name_encoder




