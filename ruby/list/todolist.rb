class TodoList 

	def initialize(chores)
		# puts "initializing TodoList..."
		@TodoList_array = []
		@chore1 = "do the dishes"
		@chore2 = "mow the lawn"
		
	end 

	def get_items
		@Todolist_array << "#{@chore1}"
		@Todolist_array << "#{@chore2}"
	end 

	
# get_items("do the dishes", "mow the lawn")
# def get_items(x,y)
# 	TodoList_array << "#{x}"
# 	Todolist_array << "#{y}"



# TodoList_array = []
# def add_chores()
# TodoList_array.push() 
# return TodoList_array
 
end 

todolist = TodoList.new
# (["do the dishes", "mow the lawn"])

p todolist

# TodoList = TodoList.new(["do the dishes", "mow the lawn"])