# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/contact' do
"1644 Perry St. <br> Jacksonville, FL 32208"
end

#this is a route parameter 
# get '/great_job/:name' do
# 	name = params[:name]
# 	if name
# 		"Great Job #{name}!"
# 	else 
# 		"Great Job!"
# 	end 
# end 

get '/great_job' do
	name = params[:name]
	if name
		"Great Job #{name}!"
	else
		"Great Job!"
	end 
end 

get '/add/:number_1/:number_2' do 
	number_1 = params[:number_1].to_i
	number_2 = params[:number_2].to_i
	result = number_1 + number_2
	 "the answer is #{result}"
end 

#research 

# There are other web application frameworks such as ruby on rails, Merb , Nitro, and Camping
# rack 'n' alternatives, Volt, meta 

# for databases there is DataMapper along with Sqlite and Active Record
# a web stack is a collection of software used for web development  th
#the components are an operating system (OS) a programming language, a database software and a web server