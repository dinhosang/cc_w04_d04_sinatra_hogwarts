require_relative('models/student')
require('pry-byebug')

student1 = Student.find(1)
student3 = Student.find(3)
students = Student.find_all

binding.pry

nil
