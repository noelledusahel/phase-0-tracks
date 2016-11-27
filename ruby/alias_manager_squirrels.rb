
def name_encoder(original_name) # the method takes a string as a parameter
	two_part_name = original_name.split(' ') # splits the name in to two items in an array called two_part_name
	two_part_name = two_part_name.reverse    # reverse item order in two part name array
	name_array = two_part_name.join(' ').chars
	name_array 
end


p name_encoder("Noelle Barber")




