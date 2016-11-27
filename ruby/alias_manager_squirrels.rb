
def name_encoder(original_name) # the method takes a string as a parameter
	two_part_name = original_name.split(' ') # splits the name in to two items in an array called two_part_name
	two_part_name = two_part_name.reverse    # reverse item order in two part name array
	name_array = two_part_name.join(' ').chars
	new_name_array = []
	

	name_array.each do |i|
	# num = 0 
	# while num < name_array.length
		if i == " " # if the array item is empty
			new_name_array << " " # add an empty space to the new array
		elsif i =~ /[aeiou]/ # if the array item matches either of these
			new_name_array << i # add the original item to the array
		else
			new_name_array << i.next #otherwise run .next on the item
		end 	
	end 
	new_name_array.join('') # return new array 

end


p name_encoder("Noelle Barber")





