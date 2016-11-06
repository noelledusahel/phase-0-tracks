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
	:number_of_children => " ",
	:decor_theme => " "
}

puts "What is your name?"
	name = gets.chomp
	project[:name] = name

puts "How old are you?"
	age = gets.chomp.to_i
	project[:age] = age

puts "How many children do you have?"
	children = gets.chomp.to_i
	project[:number_of_children] = children

puts "What is your Decor Theme?"
	decor = gets.chomp
	project[:decor_theme] = decor

p project

puts "Would You like to change any of your answers?"
replace_value = gets.chomp

if replace_value == "none"
	puts "thank you!"

elsif replace_value == "name"
	puts "What is your name?"
	replace_name= gets.chomp
	project[:name] = replace_name

elsif replace_value == "age"
	puts "How old are you?"
	replace_age = gets.chomp.to_i
	project[:age] = replace_age

elsif replace_value == "number of children"
	puts "How many children do you have?"
	replace_children = gets.chomp.to_i
	project[:number_of_children] = replace_children

elsif replace_value == "decor theme"
	puts "What is your Decor Theme?"
	replace_decor = gets.chomp
	project[:decor_theme] = replace_decor
end
puts project
