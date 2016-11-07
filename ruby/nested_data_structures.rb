# The Garden as a Nested Data Structure 

garden = {
bed_one: {
	plants:{
	tomato: "April-July",
	collards: "March-May",
	basil: "April-August"
},
	gardener_names: ["Cecilia", "Ronnie", "Carlita"]
	}, 
bed_two: {
	plants: {
	pumpkin: "July - November",
	sunflower: "April- September"
},
	gardener_names: ["Juan", "Andrea", "Sonny"]
}
}

# p garden
p garden[:bed_one][:gardener_names][2]
p garden [:bed_two][:plants]
puts garden[:bed_one][:basil]
