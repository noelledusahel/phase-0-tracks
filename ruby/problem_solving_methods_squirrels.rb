def search_array(array, search)
	i = 0
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
p search_array(array , 42)
p search_array(array , 89)