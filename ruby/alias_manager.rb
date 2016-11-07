
name = "Felicia Torres"
#create an array
name = name.split(' ')
#Move Index 0 to index 1 position
p name.insert(1, name.delete_at(0))
#split characters
name.map! {|x| x.split('')}
# 	p x.chars
# 	vowels = ["a", "e", "i", "o", "u"]
# 	if x.include?(vowels)
# 		p x.next
# end
p name





