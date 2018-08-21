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
  User.create(email: Faker::Internet.email, password: Faker::Internet.password(8))
end

10.times do
  Boat.create(title: Faker::GameOfThrones.character, description: Faker::BackToTheFuture.quote, user_id: User.last.id, price: rand(50..100), capacity: rand(4..10), photo: "https://images.unsplash.com/photo-1520255870062-bd79d3865de7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=bf9f05411ebec1834a079815976e93f3&auto=format&fit=crop&w=2852&q=80")
end

10.times do |x|
  Booking.create(boat_id: x , user_id: User.first.id, start_date: Faker::Date.between(500.days.ago, Date.today), end_date: Faker::Date.between(500.days.ago, Date.today))
end
