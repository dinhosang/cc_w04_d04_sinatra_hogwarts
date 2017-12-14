require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student')

get ("/students") do
  @students = Student.find_all()
  erb(:index)
end

get('/students/new') do
  erb(:new)
end
