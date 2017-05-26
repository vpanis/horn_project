# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning DB...'
Booking.destroy_all
Horntrip.destroy_all
User.destroy_all

puts 'Creating Users...'
mike        = User.create(email: "mike@gmail.com", password: '123456')
pokora      = User.create(email: "pokora@gmail.com", password: '123456')
achille     = User.create(email: "achille@gmail.com", password: '123456')
alban       = User.create(email: "alban@gmail.com", password: '123456')
alexis      = User.create(email: "alexis@gmail.com", password: '123456')
charles     = User.create(email: "charles@gmail.com", password: "123456")
mathieu     = User.create(email: "mathieu@gmail.com", password: "123456")
nicolas     = User.create(email: "nicolas@gmail.com", password: "123456")
vincent     = User.create(email: "vincent@gmail.com", password: "123456")
xavier      = User.create(email: "xavier@gmail.com", password: "123456")

puts 'Creating Horntrips...'
amazonie    = Horntrip.create(title: "3 Day Jungle Tour in Leticia Amazonas", address: "Manaus, Amazonas, Brésil", price: 340, starting_day: Date.new(2017, 6, 5), length: 3, description: "This is a perfect tour if you dont have enough days in the Amazon but you want to have lot of fun. My tour in Leticia Amazonas and surroundings is a mix of Culture – My Village – Jungle – Lakes – Native Communities – Adventure – Wildlife and all what you can experience about the Amazon.", is_outside: true, is_dirty: true, is_food: false, user_id: achille.id)
angers      = Horntrip.create(title: "Angers neighborhood", address: "Angers", price: 40, starting_day: Date.new(2017, 6, 10), length: 5, description: "It's time to become wild and discover the real life in Angers district", is_outside: true, is_dirty: true, is_food: true, user_id: mathieu.id)
auvergne    = Horntrip.create(title: "Auvergne vulcano", address: "Clermont Ferrand", price: 90, starting_day: Date.new(2017, 7, 5), length: 3, description: "Fight with Auvergne vulcano", is_outside: false, is_dirty: true, is_food: true, user_id: xavier.id)
vierzon     = Horntrip.create(title: "Hell in Vierzon", address: "Vierzon", price: 120, starting_day: Date.new(2017, 6, 5), length: 3, description: "Taste the Luxembourgish wild", is_outside: true, is_dirty: true, is_food: false, user_id: pokora.id)
charleville = Horntrip.create(title: "Drama in Charleville-Mezieres", address: "Charleville Mezieres", price: 40, starting_day: Date.new(2017, 6, 10), length: 5, description: "It's time to become wild and discover the real life in Angers district", is_outside: true, is_dirty: true, is_food: true, user_id: nicolas.id)
titicaca    = Horntrip.create(title: "Cluedo near Titicaca", address: "La Paz", price: 90, starting_day: Date.new(2017, 7, 5), length: 3, description: "Fight with Auvergne vulcano", is_outside: false, is_dirty: true, is_food: true, user_id: mathieu.id)
harare      = Horntrip.create(title: "Croco in Zimbabwe", address: "Harare", price: 120, starting_day: Date.new(2017, 6, 5), length: 3, description: "Taste the Luxembourgish wild", is_outside: true, is_dirty: true, is_food: false, user_id: mike.id)
vichy       = Horntrip.create(title: "Vichy with Grand-Mother", address: "Vichy", price: 40, starting_day: Date.new(2017, 6, 10), length: 5, description: "It's time to become wild and discover the real life in Angers district", is_outside: true, is_dirty: true, is_food: true, user_id: alexis.id)
everest     = Horntrip.create(title: "Climb everest in 2 days", address: "Katmandou", price: 90, starting_day: Date.new(2017, 7, 5), length: 3, description: "Fight with Auvergne vulcano", is_outside: false, is_dirty: true, is_food: true, user_id: alexis.id)
reunion     = Horntrip.create(title: "Hard work in Ile de la Reunion", address: "Saint-Denis de la Reunion", price: 120, starting_day: Date.new(2017, 6, 5), length: 3, description: "Taste the Luxembourgish wild", is_outside: true, is_dirty: true, is_food: false, user_id: xavier.id)
patagonie   = Horntrip.create(title: "Patagonia trail", address: "Ushuaia", price: 40, starting_day: Date.new(2017, 6, 10), length: 5, description: "It's time to become wild and discover the real life in Angers district", is_outside: true, is_dirty: true, is_food: true, user_id: pokora.id)
vegas       = Horntrip.create(title: "Americain trail", address: "Las Vegas", price: 90, starting_day: Date.new(2017, 7, 5), length: 3, description: "Fight with Auvergne vulcano", is_outside: false, is_dirty: true, is_food: true, user_id: mike.id)

puts 'Creating Bookings...'
b_1  = Booking.create(user: mike, horntrip: amazonie)
b_2  = Booking.create(user: alban, horntrip: auvergne)
b_3  = Booking.create(user: charles, horntrip: angers)
b_4  = Booking.create(user: vincent, horntrip: vierzon)
b_5  = Booking.create(user: charles, horntrip: vierzon)
b_6  = Booking.create(user: alban, horntrip: vierzon)
b_7  = Booking.create(user: alexis, horntrip: everest)
b_8  = Booking.create(user: xavier, horntrip: vegas)
b_9  = Booking.create(user: alban, horntrip: reunion)
b_10 = Booking.create(user: charles, horntrip: harare)
b_11 = Booking.create(user: vincent, horntrip: titicaca)
b_12 = Booking.create(user: pokora, horntrip: charleville)

puts 'Finished !'
