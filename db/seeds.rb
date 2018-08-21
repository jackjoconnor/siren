Booking.delete_all
Boat.delete_all
User.delete_all

10.times do
  User.create(email: Faker::Internet.email, password: Faker::Internet.password(8))
end

10.times do
  Boat.create(title: Faker::GameOfThrones.character, description: Faker::BackToTheFuture.quote, user_id: User.last.id, price: rand(50..100), capacity: rand(4..10), remote_photo_url: "https://images.unsplash.com/photo-1520255870062-bd79d3865de7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=bf9f05411ebec1834a079815976e93f3&auto=format&fit=crop&w=2852&q=80")
end

10.times do |x|
  Booking.create(boat_id: x , user_id: User.first.id, start_date: Faker::Date.between(500.days.ago, Date.today), end_date: Faker::Date.between(500.days.ago, Date.today))
end

user = User.new(email: "test@example.com", password: "123456")
user.owned_boats << Boat.last(5)
user.bookings << Booking.create(boat_id: 1, user: user, start_date: Faker::Date.between(500.days.ago, Date.today), end_date: Faker::Date.between(500.days.ago, Date.today))
user.save
