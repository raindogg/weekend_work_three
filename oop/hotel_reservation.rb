# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

room_237 = HotelReservation.new(customer_name: 'Jack Torrence', date: 'winter', room_number: 237)

puts room_237.room_number

result = room_237.room_number = 217

if result == room_237.room_number
  puts 'Pass!'
else
  puts 'Fail.'
end

room_237.add_a_fridge

room_237.add_a_crib

room_237.add_a_custom_amenity('axe')

result = room_237.amenities

if result == ['fridge', 'crib', 'axe']
  puts 'Pass!'
else
  puts 'Fail.'
end
