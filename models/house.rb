require_relative('../db/sqlrunner')

class House

attr_reader :name, :id, :logo

def initialize ( options )
  @id = options['id'].to_i if options['id']
  @name = options['name']
  @logo = options['logo']
end


def save
  sql = "INSERT INTO houses
        (name, logo)
        VALUES ($1, $2)
        RETURNING id;"
  values = [@name, @logo]
  id_hash = SqlRunner.run(sql, values).first
  @id = id_hash['id'].to_i
end


def House.find_all()
  sql = "SELECT * FROM houses;"
  house_hashes = SqlRunner.run(sql)
  houses_array = house_hashes.map do |house_hash|
    House.new(house_hash)
  end
  return houses_array
end


def self.find(id)
  sql = "
        SELECT * FROM houses
        WHERE id = $1;
        "
  house_hash = SqlRunner.run(sql, [id]).first
  house = House.new(house_hash)
  return house
end


end
