require 'sqlite3'


#create database
db = SQLite3::Database.new("exodi_arts.db")
db.results_as_hash = true
#create table
create_table_cmd = 
	"CREATE TABLE IF NOT EXISTS price_list(
		id INTEGER PRIMARY KEY,
		name VARCHARS(255),
		unit_price INT,
		color VARCHARS(255)
	)"
 	

db.execute(create_table_cmd)

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

retrieve_item = db.execute("SELECT * FROM price_list WHERE id = #{selection}" )
puts "----------Your Order----------"

retrieve_item.each do  |item|
	puts " You chose #{item['name']} at a price of $#{item['unit_price']} per yard"
end 





