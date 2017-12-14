require_relative('../db/sqlrunner')

class Student

  def initialize( options_hash )
    @id = options_hash['id'].to_i if options_hash['id']
    @first_name = options_hash['first_name']
    @second_name = options_hash['second_name']
    @house = options_hash['house']
    @age = options_hash['age'].to_i
  end

  def save()
    sql = "INSERT INTO students
          (first_name, second_name, house, age)
          VALUES ($1, $2, $3, $4)
          RETURNING id;"
    values = [@first_name, @second_name, @house, @age]
    id_hash = SqlRunner.run(sql, values).first()
    @id = id_hash["id"].to_i
  end


end
