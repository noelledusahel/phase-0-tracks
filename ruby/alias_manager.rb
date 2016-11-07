
name = "Felicia Torres"
#create an array
name = name.split(' ')

#Move Index 0 to index 1 position
p name.insert(1, name.delete_at(0))
p full_name = name.join(' ')
#split characters
name_arr = full_name.chars
p name_arr 
p name_arr.class

name_arr.each do |x|
	if x.include?("a")
		x.next

	end
end




