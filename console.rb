require('pry')
require_relative('model/property_tracker')

property_hash_one = {'address' => '60 Bavelaw Road', 'value' => '2000000',
  'no_of_bedrooms' => '3', 'year_built' => 2008
}

property_hash_two = {'address' => '12 Hawkhill Close', 'value' => '150000',
  'no_of_bedrooms' => '1', 'year_built' => 1998
}

property_one = PropertyTracker.new(property_hash_one)
property_two = PropertyTracker.new(property_hash_two)

property_one.save
property_two.save

binding.pry
nil
