# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require "pry"

10.times do
  Boat.create(title: Faker::GameOfThrones.character, user_id: User.last.id)
end

10.times do |x|
  Booking.create(boat_id: x , user_id: User.find_by_email("test@example.com").id)
end
