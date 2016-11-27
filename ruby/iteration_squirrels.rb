# create a method that calls a .times block 

def coffee_ceremony
	puts "Selam! Lets have a coffee ceremony"
	yield("yiannis", "miriam")
end

# participants_array = ["yiannis", "miriam", "tesfaye"] #creates an array
# p coffee_ceremony(participants_array)
# number_of_participants = participants_array.length #for iteration purposes, calc the length of array

coffee_ceremony {|name1, name2| puts "#{name1} and #{name2} took a cup"}

# p coffee_ceremony