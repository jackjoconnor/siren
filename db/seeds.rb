Booking.delete_all
Boat.delete_all
User.delete_all

# Example Ports

PORTS = ["Marina Grande, Capri",
  "Marina di Porto Cervo, Sardinia",
  "Marina di Portofino, Genova",
  "Ibiza Magna, Ibiza",
  "Puerto Banús, Marbella",
  "OneOcean Port Vell, Barcelona",
  "Port Tarraco, Spain",
  "Port de Saint Tropez, France",
  "Port Hercule, Monaco",
  "Port Vauban, Antibes",
  "Porto Montenegro, Montenegro",
  "Grand Harbour Marina, Valletta",
  "Yas Marina, Abu Dhabi",
  "Yacht Haven Grande, St Thomas, U.S. Virgin Islands",
  "Port de Gustavia, Saint Barths"]

# Random Users

5.times do
  User.create(email: Faker::Internet.email,
    password: Faker::Internet.password(8),
    name: Faker::Name.name)
end

#Boat that belong to random users
Boat.create(
  title: "Dilbar",
  description: Faker::Lorem.paragraphs,
  capacity: 45,
  price: 92540,
  user: User.all.sample,
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933215/8dc001ba865dcdd64e768de6cd7ec457.jpg",
  location: PORTS.sample
)

Boat.create(
  title: "Dubourdieu Classic Express",
  description: Faker::Lorem.paragraphs,
  capacity: rand(4..10),
  price: rand(80..450),
  user: User.all.sample,
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933409/topiki-4-small.jpg",
  location: PORTS.sample
)

Boat.create(
  title: "Magazzu MX 18",
  description: Faker::Lorem.paragraphs,
  capacity: rand(4..10),
  price: rand(600..1000),
  user: User.all.sample,
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933580/26831-7398691.jpg",
  location: PORTS.sample
)

Boat.create(
  title: "Aston Martin AM37",
  description: Faker::Lorem.paragraphs,
  capacity: rand(4..8),
  price: rand(1000..1500),
  user: User.all.sample,
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534934015/Aston-Martin-AM37-Powerboat-review.jpg",
  location: PORTS.sample
)

Boat.create(
  title: "Bavaria C45",
  description: Faker::Lorem.paragraphs,
  capacity: rand(4..8),
  price: rand(1000..1500),
  user: User.all.sample,
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534934361/BavariaC45_1.jpg",
  location: PORTS.sample
)

Boat.create(
  title: "Azzuri",
  description: Faker::Lorem.paragraphs,
  capacity: rand(4..8),
  price: rand(250..300),
  user: User.all.sample,
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534931469/byfuatncjlfw7pcaim3b.jpg",
  location: PORTS.sample
)

#Julien and Roman User

User.create(
  email: "roman.abramovich@billionaire.com",
  password: "iamsorich",
  name: "Roman Abramovich",
  remote_photo_url: "https://res.cloudinary.com/dturke38u/image/upload/v1535030717/20161013183650935.650x0n.jpg"
)

User.create(
  email: "julien@gmail.com",
  password: "julienjulien",
  name: "Julien BdC"
)

#Boat that belong to Roman or julien

Boat.create(
  title: "Titanic",
  user: User.find_by(email: "julien@gmail.com"),
  description: Faker::Lorem.paragraphs,
  capacity: rand(2000..2050),
  price: rand(100000..110000),
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534934458/History_Speeches_6001_Titanic_Survivor_Eyewitness_still_624x352.jpg",
  location: "Port of Southampton, Southampton, UK"
)

Boat.create(
  title: "Catamaran",
  user: User.find_by(email: "julien@gmail.com"),
  description: Faker::Lorem.paragraphs,
  capacity: rand(4..10),
  price: rand(80..450),
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534934799/photos-lucia-405-1330x800.jpg",
  location: "Port Adriano, Mallorca"
)

Boat.create(
  title: "Eclipse",
  user: User.find_by(email: "roman.abramovich@billionaire.com"),
  description: Faker::Lorem.paragraphs,
  capacity: 40,
  price: 100000,
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933017/eclipse-1.jpg",
  location: "Hamilton Harbour, Bermuda"
)

Boat.create(
  title: "Riva Iseo",
  user: User.find_by(email: "roman.abramovich@billionaire.com"),
  description: Faker::Lorem.paragraphs,
  capacity: rand(4..7),
  price: rand(1500..2000),
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933305/Moottorivene-Riva-3e826ca790677d79-large.jpg",
  location: "Old Port of Marseille, France"
)

Boat.create(
  title: "Le Rivarama Super",
  user: User.find_by(email: "roman.abramovich@billionaire.com"),
  description: Faker::Lorem.paragraphs,
  capacity: rand(6..14),
  price: rand(1000..1500),
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933814/73074_2015_ferretti_group_Riva_Riva_Aquariva_33.jpg",
  location: "Port of Thessaloniki, Thessaloniki, Greece"
)

i = 1

Boat.find_each do |b|
  starts = (i..20 + i).to_a.sample.days.from_now
  ends = starts + (1..10).to_a.sample.days
  Booking.create!(
    boat: b,
    user: User.first,
    start_date: starts,
    end_date: ends
  )
  i += 20
end
