class TodoList

def initialize(list_arr)
	@todo_arr = list_arr
end

def get_items
	@todo_arr
end

def add_item(item)
	@todo_arr << item
end

def delete_item(item)
	@todo_arr.delete(item)
end

def get_item(index)
	@todo_arr [index]
end

end
# get_items("do the dishes", "mow the lawn")
# def get_items(x,y)
# 	TodoList_array << "#{x}"
# 	Todolist_array << "#{y}"



# TodoList_array = []
# def add_chores()
# # TodoList_array.push() 
# # return TodoList_array
 
# end 

# todolist = TodoList.new
# # (["do the dishes", "mow the lawn"])

# p todolist

# TodoList = TodoList.new(["do the dishes", "mow the lawn"])