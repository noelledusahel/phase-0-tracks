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

p cores

colors.each do |cor| # .each command to print colors as character array
	p cor.chars
end 
p colors

colors.each do |cor| # .each command to reverse items colors array and feed them in to a new array
	cores << cor .reverse
end 
p colors	#expectation is that colors array itself wont change...
p cores		#but the new array cores is what does store the changes

colors.map! do |cor| # map! command changes the colors array
	cor.chars
end 
p colors

foods = { 
	cheese: "queijo",
	bread: "pao",
	juice: "suco",
	orange:  "laranja"
}

foods.each do |eng, port|
		puts "The word #{eng.upcase} in Portuguese is #{port}"
end	