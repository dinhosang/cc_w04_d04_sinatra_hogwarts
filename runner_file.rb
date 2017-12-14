require('pry-byebug')
require_relative('models/student')
require_relative('models/house')


student1 = Student.find(1)
student3 = Student.find(3)
students = Student.find_all

house2 = House.find(2)
house4 = House.find(4)
houses = House.find_all

house = student3.house

binding.pry

nil
