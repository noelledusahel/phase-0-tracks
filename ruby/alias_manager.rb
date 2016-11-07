
puts "Enter a First and Last Name"
name = gets.chomp

# name = "Felicia Torres"
#create an array
name = name.split(' ')

#Move Index 0 to index 1 position
p name.insert(1, name.delete_at(0))
# join characters together
p full_name = name.join(' ')
#split characters & name new array
$name_arr = full_name.chars
p $name_arr 
# create a new array 
coded_arr = []
vowels = ["a","e","i", "o", "u"]

#select vowels
p $name_arr.select! {|letter| letter =~ /[aeiou]/}
# .next applied to each item in the array 
# $name_arr.map! {|letter| letter.next}

i = 0 
p "Original", $name_arr 
def next_vowel(letter)
	while i < name_arr.length
	if letter =~ [aeiou]
		$name_arr.drop(letter)
	i += 1
end 
end
end 


p $name_arr


