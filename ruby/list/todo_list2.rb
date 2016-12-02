class TodoList

	def initialize(array) 
		@array = array
	end 

	def get_items
		@array
	end 

	def add_item(str)
		@array.push(str)
	end


end

# TodoList.new(["do the dishes", "mow the lawn"])
