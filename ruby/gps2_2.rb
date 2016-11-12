# Method to create a list
def create_list(items_raw)
	items_array = items_raw.split(' ')
	grocery_hash = {}
	p grocery_hash

	items_array.each do |each_item|
		grocery_hash[each_item] = 3
	end
	grocery_hash
end

grocery_list = create_list("carrots apples cereal pizza")
p grocery_list

def add_item(grocery_list,name,quantity)
	grocery_list[name] = quantity
end

add_item(grocery_list, "bread", 4)
p grocery_list

def remove_item(grocery_list, name)
	grocery_list.delete(name)
end 

remove_item(grocery_list, "pizza")
p grocery_list

def update_value(grocery_list, name, value)
	grocery_list[name] = value
end 

update_value(grocery_list, "apples", 17)
puts grocery_list

def makeit_pretty(list)
list_array = list.flatten
list_array.each do |list|
	list_array.join(" ")
end 
end

puts makeit_pretty(grocery_list)



# p grocery_array

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here] First pass each items based on its index value in to the hash
  # pair this items as a key with a value (integer which is the items quantity.)
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list def add_item(name, quantity)
# input: item name and optional quantity
# steps: define the method and grocery_hash[name] = quantity
# output: a hash with the latest values equal to name, quantity 

# Method to remove an item from the list 
# input: just enter the name of the key
# steps: hash.delete(key) 
# output:

# Method to update the quantity of an item
# input: the list name, the name of the item, and the new quatity
# steps: same code as add item, this time you will use an existing key, and enter a new number for 
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: