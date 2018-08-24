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
  description: "You can go for a long offshore journey or a have a beautiful trip
  along the coast. The capacity is 900 liters of fresh water and 1000 liters of fuel.
  Power Generator and Watermaker are onboard. Solar Panels provide autonomous
  electricity. Large dinghy with 20hp outboard engine will help to descent land.",
  capacity: 45,
  price: 92540,
  user: User.all.sample,
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933215/8dc001ba865dcdd64e768de6cd7ec457.jpg",
  location: PORTS.sample
)

Boat.create(
  title: "Dubourdieu Classic Express",
  description: "Get on board the Dubourdieu Classic Express, a boat with sensitive
  and luxury designs.

  She offers excellent stability at anchor, what assures a comfortable and relaxing
  stay in the interior and exterior spaces. She counts with a large solarium in the sundeck, which is perfect to sunbathe while tasting fresh champagne. She also has a broad area in the back, where you can enjoy a
  Mediterranean lunch while observing the blue views.",
  capacity: rand(4..10),
  price: rand(80..450),
  user: User.all.sample,
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933409/topiki-4-small.jpg",
  location: PORTS.sample
)

Boat.create(
  title: "Magazzu MX 18",
  description: " Featuring modern comforts such as wireless music system and
  electrical winches for put the sails on, whilst maintaining the stately,
  classic-style interiors reminiscent of a period country home.

  Lazy days comes with a highly skilled captain who is passionate and
  infinitely knowledgeable about the yacht and her history. ",
  capacity: rand(4..10),
  price: rand(600..1000),
  user: User.all.sample,
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933580/26831-7398691.jpg",
  location: PORTS.sample
)

Boat.create(
  title: "Aston Martin AM37",
  description: '
  The Aston Martin is an elegant boat easy to navigate. Perfect for your ideal getaway from Barcelona
  either for a one-day or multiple-day escapes.',
  capacity: rand(4..8),
  price: rand(1000..1500),
  user: User.all.sample,
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534934015/Aston-Martin-AM37-Powerboat-review.jpg",
  location: PORTS.sample
)

Boat.create(
  title: "Bavaria C45",
  description: 'Bavaria C45 is ideal to take out for day trips with friends and
  family.

  Perfect to get away from work or simply enjoy the ocean during your vacation
  stay while sightseeing and enjoying the beautiful Barcelona skyline.',
  capacity: rand(4..8),
  price: rand(1000..1500),
  user: User.all.sample,
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534934361/BavariaC45_1.jpg",
  location: PORTS.sample
)

Boat.create(
  title: "Azzuri",
  description: "Elegance on board. Imagine exploring the Mediterranean sea on this
  beautiful boat. She offers elegant interiors, such as a large salon,
  comfortable galley and four twin bed cabins equipped with luxurious amenities.

  Azzuri also offers very spacious solariums and there is also a grill in the up
  deck to prepare some shrimp or veal for guests and luxuriate in the jacuzzi.
  Ask for the captain to ride a jet ski or to enjoy a refreshing meal on board!",
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
  name: "Julien BdC",
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/jlbdcn"
)

#Boat that belong to Roman or julien

Boat.create(
  title: "Titanic",
  user: User.find_by(email: "julien@gmail.com"),
  description: "The Titanic offers elegant interiors, such as a large salon,
  comfortable galley and four twin bed cabins equipped with luxurious amenities.

  The Titanic also offers very spacious solariums and there is also a grill in the up
  deck to prepare some shrimp or veal for guests and luxuriate in the jacuzzi.
  Ask for the captain to ride a jet ski or to enjoy a refreshing meal on board!",
  capacity: rand(2000..2050),
  price: rand(100000..110000),
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534934458/History_Speeches_6001_Titanic_Survivor_Eyewitness_still_624x352.jpg",
  location: "Port of Southampton, Southampton, UK"
)

Boat.create(
  title: "Catamaran",
  user: User.find_by(email: "julien@gmail.com"),
  description: "This is a majestic boat, easy to navigate.
  Perfect for your ideal getaway either for a one-day sailing trip to relax
  and enjoy the views, or a multiple-day escape with family and friends.

  Price shown is high season and local taxes included.
  Please inquire for pricing for other seasons.
  Boats available to operate without a captain for qualified individuals.
  Inquire about pricing",
  capacity: rand(4..10),
  price: rand(80..450),
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534934799/photos-lucia-405-1330x800.jpg",
  location: "Port Adriano, Mallorca"
)

Boat.create(
  title: "Eclipse",
  user: User.find_by(email: "roman.abramovich@billionaire.com"),
  description: "M/Y Eclipse is a luxury motor yacht built by Blohm+Voss of
  Hamburg, Germany.

  Her exterior and interior were designed by Terence Disdale.
  The yacht was delivered to Russian businessman Roman Abramovich on 9 December 2010.",
  capacity: 40,
  price: 100000,
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933017/eclipse-1.jpg",
  location: "Hamilton Harbour, Bermuda"
)

Boat.create(
  title: "Riva Iseo",
  user: User.find_by(email: "roman.abramovich@billionaire.com"),
  description: "Sailing alone, with your loved one, with your family or friends.

  This boat is the sailing dream come true!
  It knows how to adapt to life's stages by adding or subtracting elements.",
  capacity: rand(4..7),
  price: rand(1500..2000),
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933305/Moottorivene-Riva-3e826ca790677d79-large.jpg",
  location: "Old Port of Marseille, France"
)

Boat.create(
  title: "Le Rivarama Super",
  user: User.find_by(email: "roman.abramovich@billionaire.com"),
  description: "Le Rivarama Super is brand new. Inspired by the oceans.

  This boat has luxury and design merged with Barcelona Skyline and
  she seems to be an integral part of the surrounding environment.
  On the upper deck, you can find a bbq ready to cook fresh fish, an ice maker and
  a large sofa, together with a table and thanks to a couple of chairs, up to eight
  people can cosily spend time together.

  The front deck is perfect to sunbathe and enjoy Barcelonian vibes; while the back
  is perfect to have dinner in the comfortable table and sofa area and jump to
  the weather with security and style. Moreover, she counts with spacious interiors,
  such as a master cabin featured with double bed, sofa and en-suite restroom and
  two additional cabins with double bed. She is filled out with luxurious amenities,
  such as a grill to cook fresh food at her interior, a swift dinghy and water toys.",
  capacity: rand(6..14),
  price: rand(1000..1500),
  remote_photo_url: "https://res.cloudinary.com/dczyseu80/image/upload/v1534933814/73074_2015_ferretti_group_Riva_Riva_Aquariva_33.jpg",
  location: "Port of Thessaloniki, Thessaloniki, Greece"
)

Boat.create(
  title: "History Supreme",
  user: User.find_by(email: "roman.abramovich@billionaire.com"),
  description: "It almost hurts doesn’t it? Made with over 100,000 kg of gold
  and decorated with everything from T-Rex bones to miniature meteorites this
  unfortunate case of what-the-heck-do-I-do-with-5-billion-dollars.",
  capacity: rand(8..15),
  price: rand(500000..2000000),
  remote_photo_url: "https://res.cloudinary.com/dqiosiccn/image/upload/v1535110034/History-Supreme.png",
  location: "Kuala Lumpur, Malaysia"
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
