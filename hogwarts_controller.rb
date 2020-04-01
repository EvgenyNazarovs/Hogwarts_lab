require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/student')
also_reload('./models/*')


# INDEX
get '/students' do
  @students = Student.all
  erb(:index)
end

# CREATE

get '/students/new' do
  @list_of_schools = ["Gryffindor",
                      "Ravenclaw",
                      "Hufflepuff",
                      "Slytherin"]
  erb(:new)
end

post '/students' do
  new_student = Student.new(params)
  new_student.save
end
