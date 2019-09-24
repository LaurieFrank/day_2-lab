require('pg')

class PropertyTracker

attr_accessor :address, :value, :no_of_bedrooms, :year_built
attr_reader :id

def initialize (options)
    @id = options['id'] if options['id']
    @address = options['address']
    @value = options['value'].to_i()
    @no_of_bedrooms = options['no_of_bedrooms'].to_i()
    @year_built = options['year_built'].to_i()
end

def save()
  db = PG.connect({ dbname: "property_tracker", host: 'localhost' })
  sql = "INSERT INTO properties (
  address,
  value,
  no_of_bedrooms,
  year_built
) VALUES
($1, $2, $3, $4) RETURNING *"

values = [@address, @value, @no_of_bedrooms, @year_built]
db.prepare("save", sql)
@id = db.exec_prepared("save", values)[0]["id"].to_i
db.close()

end

def delete()
  db = PG.connect({ dbname: "property_tracker", host: 'localhost' })
  sql = "DELETE FROM properties WHERE id = $1"
  values = [@id]
  db.prepare("delete", sql)
  db.exec_prepared("delete", values)
  db.close()
end

end
