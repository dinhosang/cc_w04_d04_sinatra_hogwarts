require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student')
require('pry-byebug')

get ('/students') do
  @students = Student.find_all()
  erb(:index)
end


get ('/students/new') do
  erb(:new)
end


post ('/students') do
  @student = Student.new(params)
  @student.save
  erb(:create)
end
