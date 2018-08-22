Booking.delete_all
Boat.delete_all
User.delete_all

5.times do
  User.create(email: Faker::Internet.email, password: Faker::Internet.password(8))
end

User.create(email: "roman.abramovich@billionaire.com", password: "iamsorich" )

User.create(email: "julien@gmail.com", password: "julienjulien")

Boat.create(title: "Catamaran", User.where(email: "julien@gmail.com"), description: Faker::Lorem.paragraphs, capacity: rand(4..10), price: rand(80..450), user_id: User.last.id, remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534934799/photos-lucia-405-1330x800.jpg")

Boat.create(title: "Eclipse", user: User.where(email: "roman.abramovich@billionaire.com"), description: Faker::Lorem.paragraphs, capacity: 40, price: 100000, user_id: User.last.id, remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933017/eclipse-1.jpg")

Boat.create(title: "Dilbar", description: Faker::Lorem.paragraphs, capacity: 45, price: 92540, user_id: User.last.id, remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933215/8dc001ba865dcdd64e768de6cd7ec457.jpg")

Boat.create(title: "Riva Iseo",user: User.where(email: "roman.abramovich@billionaire.com"), description: Faker::Lorem.paragraphs, capacity: rand(4..7), price: rand(1500..2000), user_id: User.last.id, remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933305/Moottorivene-Riva-3e826ca790677d79-large.jpg")

Boat.create(title: "Dubourdieu Classic Express", description: Faker::Lorem.paragraphs, capacity: rand(4..10), price: rand(80..450), user_id: User.last.id, remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933409/topiki-4-small.jpg")

Boat.create(title: "Magazzu MX 18", description: Faker::Lorem.paragraphs, capacity: rand(4..10), price: rand(600..1000), user_id: User.last.id, remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933580/26831-7398691.jpg")

Boat.create(title: "Le Rivarama Super", user: User.where(email: "roman.abramovich@billionaire.com"), description: Faker::Lorem.paragraphs, capacity: rand(6..14), price: rand(1000..1500), user_id: User.last.id, remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933814/73074_2015_ferretti_group_Riva_Riva_Aquariva_33.jpg")

Boat.create(title: "Aston Martin AM37", description: Faker::Lorem.paragraphs, capacity: rand(4..8), price: rand(1000..1500), user_id: User.last.id, remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534934015/Aston-Martin-AM37-Powerboat-review.jpg")

Boat.create(title: "Bavaria C45", description: Faker::Lorem.paragraphs, capacity: rand(4..8), price: rand(1000..1500), user_id: User.last.id, remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534934361/BavariaC45_1.jpg")

Boat.create(title: "Titanic", User.where(email: "julien@gmail.com"), description: Faker::Lorem.paragraphs, capacity: rand(2000..2001), price: rand(100000..110000), user_id: User.last.id, remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534934458/History_Speeches_6001_Titanic_Survivor_Eyewitness_still_624x352.jpg")

Boat.create(title: "Azzuri", description: Faker::Lorem.paragraphs, capacity: rand(4..8), price: rand(250..300), user_id: User.last.id, remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534931469/byfuatncjlfw7pcaim3b.jpg")

Boat.find_each do |b|
  Booking.create!(boat: b, user: User.first, start_date: Faker::Date.between(500.days.ago, Date.today), end_date: Faker::Date.between(500.days.ago, Date.today))
end

user = User.new(email: "test@example.com", password: "123456")
user.owned_boats << Boat.last(5)
user.bookings << Booking.create(boat: Boat.first, user: user, start_date: Faker::Date.between(500.days.ago, Date.today), end_date: Faker::Date.between(500.days.ago, Date.today))
user.save
