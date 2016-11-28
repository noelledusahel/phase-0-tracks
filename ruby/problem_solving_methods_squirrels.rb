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
p search_array(array , 42 )
p search_array(array , 89)

## Release 1: Create a Fibonacci Sequence
#Fibonacci sequence will start with 0 and 1 
# Make a seperate conditional case for 0 and 1 and then continute adding 

def sequence(integer)
	# i = 0 
	fib_sequence = []
	integer.times do |i|
		if i == 0 
			fib_sequence[i] = i 
		elsif i == 1 
			fib_sequence[i] = 1
		else 
			fib_sequence[i] = fib_sequence[i-1] + fib_sequence[i-2]
		end 
	end
	return fib_sequence[0..integer]
end 

p sequence(2)
p sequence(3)
p sequence(6)
if sequence(100).last == 218922995834555169026
	puts "Got It"
else 
	puts "Try your code again"
end 


##Release 2
# insertion sort
#create a new array to store input
new_array = [] 

def insertion(array)
	#create pivot value and place at the beginning of a new array
	new_array = [array[0]]
	array.delete_at(0)
	#second value from array and compare with new_array 
	for i in array # this i need to research more, how to use (for) and (in)
		final_index = 0
	while final_index < new_array.length
		if i <= new_array[final_index]
			new_array.insert(final_index, i)
			break
		elsif final_index == new_array.length-1
			new_array.insert(final_index+1, i)
			break
		end 
		final_index += 1
	end 
end 
new_array # return new array
end 

array = [1, 5, 3, 4, 6, 3]

p insertion(array)


