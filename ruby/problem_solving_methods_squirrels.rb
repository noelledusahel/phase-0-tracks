def search_array(array, search) # method takes two parameters 
	i = 0 						# start the counter at zero so that i can be = to index number
	while i < array.length 
		if 
			array[i].eql?(search) == true
			return i 
		else 
			 nil
		end 
		i += 1
	end 	
end

array = [42, 89, 23, 1]
p search_array(array , 6)
p search_array(array , 42git )
p search_array(array , 89)