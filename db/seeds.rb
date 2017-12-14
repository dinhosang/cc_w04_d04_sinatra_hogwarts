require_relative('../models/student')

student1 = Student.new({
  "first_name" => "Harry",
  "second_name" => "Potter",
  "age" => "13",
  "house" => "Gryffindor"
  })

student2 = Student.new({
  "first_name" => "Draco",
  "second_name" => "Malfoy",
  "age" => "13",
  "house" => "Slytherin"
  })

student3 = Student.new({
  "first_name" => "Sirius",
  "second_name" => "Black",
  "age" => "14",
  "house" => "Gryffindor"
  })

student4 = Student.new({
  "first_name" => "Cho",
  "second_name" => "Chang",
  "age" => "12",
  "house" => "Ravenclaw"
  })

  student1.save()
  student2.save()
  student3.save()
  student4.save()
