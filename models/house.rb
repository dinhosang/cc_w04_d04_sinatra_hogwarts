require_relative('../db/sqlrunner')

class House

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

end
