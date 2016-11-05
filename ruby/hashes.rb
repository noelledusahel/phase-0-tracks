# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered all of the questions.
# Give the user the opportunity to update a key (no need to loop, once is fine). 
#After all, sometimes users make mistakes! If the designer says "none", skip it. 
#But if the designer enters "decor_theme" (for example),
# your program should ask for a new value and update the :decor_theme key. 
#(Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) 
#You can assume the user will correctly input a key that exists in your hash 
#-- no need to handle user errors.
# Print the latest version of the hash, and exit the program.

#clients name
 
project = {
	:name => " ",
	:age => " ",
	"Number of Children" => " ",
	"Decor Theme" => " "
}

puts "What is your name?"
	name = gets.chomp
	project[:name] = name

puts "How old are you?"
	age = gets.chomp.to_i
	project[:age] = age

puts "How many children do you have?"
	children = gets.chomp.to_i
	project["Number of Children"] = children

puts "What is your Decor Theme?"
	decor = gets.chomp
	project["Decor Theme"] = decor



p project