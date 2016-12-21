require 'sqlite3'


#create database
db = SQLite3::Database.new("exodi_arts.db")
db.results_as_hash = true
#create table
create_pricelist_cmd = 
	"CREATE TABLE IF NOT EXISTS price_list(
		id INTEGER PRIMARY KEY,
		name VARCHARS(255),
		unit_price INT,
		color VARCHARS(255)
	)"
 	
#Create Shopping Cart Table 
create_cart_cmd = 
	"CREATE TABLE IF NOT EXISTS shopping_cart(
		id INTEGER PRIMARY KEY,
		pricelist_id INT,
		FOREIGN KEY(pricelist_id) REFERENCES price_list(id)
	);"

db.execute(create_pricelist_cmd)
db.execute(create_cart_cmd)
# def enter_item (db, name, price, color)
# 	db.execute('INSERT OR IGNORE INTO price_list (name, unit_price, color) VALUES (?, ?, ?)', [name, price, color])
# end 


# enter_item(db, "canvas", 25, "#e5eefc")
# enter_item(db, "Triline tape", 37, "#24984e")
# enter_item(db, "Heavy Paper SCPS-2", 5.5, "#FFFDE9")


price_list = db.execute("SELECT * FROM price_list")

price_list.each do |entry|
	puts "Item #{entry['id']}: #{entry['name']}, Price:#{entry['unit_price']}, Color:#{entry['color']}"
end 


puts "Make a selection"
selection = gets.chomp.to_i 
# this item can populate a second database that keeps track of the price of items and a grand total. 
# create a question that asks users to enter how many units"
# multiply this by price per unit
# migrate the name of the item and the total price to the new database



retrieve_item = db.execute("SELECT * FROM price_list WHERE id = #{selection}" )
puts "----------Your Order----------"

retrieve_item.each do  |item|
	puts " You chose #{item['name']} at a price of $#{item['unit_price']} per yard"
end 

db.execute("INSERT INTO shopping_cart (pricelist_id) VALUES ('#{selection}') ")
db.execute("SELECT * FROM price_list, shopping_cart WHERE shopping_cart.pricelist_id = price_list.id")
#db.execute("SELECT price_list.name FROM price_list JOIN shopping_cart ON
#	shopping_cart.pricelist_id = price_list.id")

# enter_cart.each do |cart_item|
# 	puts "you added #{item['name']} to your cart "
# end 

# retrieve_cart = db.execute("SELECT * FROM shopping_cart")


