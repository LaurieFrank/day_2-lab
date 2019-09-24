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
property_one.value=1

property_one.update()

properties1 = PropertyTracker.all()

# property_one.delete()
#
# properties2 = PropertyTracker.all()
#
# PropertyTracker.delete_all()
#
# properties3 = PropertyTracker.all()

property_three = PropertyTracker.find(1)
property_four = PropertyTracker.find_by_address('60 Bavelaw Road')

binding.pry
nil
