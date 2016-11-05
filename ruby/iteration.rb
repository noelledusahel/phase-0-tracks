
# puts  "What do you know about state capitols? nothing!"
# def capitolator
# 	puts "Lets learn some state capitols!"
# 	capitol1 = "Sacramento"
# 	capitol2 = "Tallahassee"
# 	yield(capitol1, capitol2)
# end 

# capitolator { |capitol1, capitol2| puts "The capitol of California is #{capitol1}. 
# The capitol of Florida is #{capitol2}" }

# puts "Now we learned the capitols of the two most important states of the union! (election years only)"

capitols = ["Sacramento", "Tallahassee", "St. Paul", "Annapolis"]

state_pairs = {
	"Sacramento" => "California",
	"Tallahassee" => "Florida",
	"St. Paul" => "Minnesota",
	"Annapolis" => "Maryland"
}

# puts capitols

# capitols.each {|capitol| puts capitol.upcase }

# capitols.map! {|capitol| puts capitol + "!"}

puts state_pairs

state_pairs.each {|city, state| puts city.reverse.upcase, state.reverse.upcase} 


