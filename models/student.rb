require_relative('../db/sqlrunner')

class Student

  attr_reader :age, :house

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

  def pretty_name()
    return "#{@first_name} #{@second_name}"
  end

  def Student.find(id)
    sql = "
          SELECT * FROM students
          WHERE id = $1;
          "
    student_hash = SqlRunner.run(sql, [id]).first
    student = Student.new(student_hash)
    return student
  end


  def self.find_all()
    sql = "SELECT * FROM students"
    student_hashes = SqlRunner.run(sql)
    students_array = student_hashes.map do |student_hash|
      Student.new(student_hash)
    end
    return students_array
  end


end
