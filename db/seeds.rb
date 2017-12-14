require_relative('../models/student')
require_relative('../models/house')

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

  house1 = House.new({"name" => "Gryffindor", "logo" =>"/public/crests/Gryffindor.png"})
  house2 = House.new({"name" => "Hufflepuff", "logo" =>"/public/crests/Hufflepuff.png"})
  house3 = House.new({"name" => "Ravenclaw", "logo" =>"/public/crests/Ravenclaw.png"})
  house4 = House.new({"name" => "Slytherin", "logo" =>"/public/crests/Slytherin.png"})

  student1.save()
  student2.save()
  student3.save()
  student4.save()

  house1.save()
  house2.save()
  house3.save()
  house4.save()
