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


def travel_agent
	puts "What is your budget? We are here to make a trip happen for you!"
	origin = "Orlando"
	destination = "Havana"
	oneway = 60
	roundtrip = 150
	yield( origin, destination, oneway, roundtrip)
end

travel_agent{|origin, destination, oneway, roundtrip| puts "--------\n Your Trip Itinerary: \n From #{origin} to #{destination} \n One Way: #{oneway} \n Round Trip: #{roundtrip}"}

#Release 1 
colors = ["roxa" , "vermelho", "amarelo", "marrom", "azul"]
cores = []

colors.each do |cor|
	p cor.chars
end 

colors.each do |cor|
	cores << cor .reverse
end 

p cores

foods = { 
	cheese: "queijo",
	bread: "pao",
	juice: "suco",
	orange:  "laranja"
}
