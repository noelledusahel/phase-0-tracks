require 'sqlite3'


#create database
db = SQLite3::Database.new("exodi_arts.db")

#create table
create_table_cmd = 
	"CREATE TABLE IF NOT EXISTS price_list(
		id INTEGER PRIMARY KEY,
		name VARCHARS(255),
		unit_price INT,
		color VARCHARS(255)
	)"
 	

db.execute(create_table_cmd)

def enter_item (db, name, price, color)
	db.execute('INSERT INTO price_list (name, unit_price, color) VALUES (?, ?, ?)', [name, price, color])
end 
1.times do
  enter_item(db, "canvas", 25, "#e5eefc")
end


price_list = db.execute("SELECT * FROM price_list")


p price_list



