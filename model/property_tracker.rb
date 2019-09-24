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


end
