
def name_encoder(original_name) # the method takes a string as a parameter
	two_part_name = original_name.split(' ') # splits the name in to two items in an array called two_part_name
	two_part_name = two_part_name.reverse    # reverse item order in two part name array
	name_array = two_part_name.join(' ').chars
	new_name_array = []
	

	name_array.each do |i|
	# num = 0 
	# while num < name_array.length
		if i == " "
			new_name_array << " "
		elsif i =~ /[aeiou]/
			new_name_array << i
		else
			new_name_array << i.next
		end 	
	end 
	new_name_array

end


p name_encoder("Noelle Barber")





