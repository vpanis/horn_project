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

puts 'Creating DB...'
mike     = User.create(email: 'mikehorn@gmail.com', password: '123456')
jacques  = User.create(email: 'jacquescousteau@gmail.com', password: '123456')
marco    = User.create(email: 'marcopolo@gmail.com', password: '123456')
vincent  = User.create(email: "vpanis@gmail.com", password: "yoyoyo")
charles  = User.create(email: "cbenard@gmail.com", password: "azertyui")
user_id = User.first.id
amazonie = Horntrip.create(title: "Amazonian forest", address: "1 rue d'Anvers, Luxembourg", price: 120, starting_day: Date.new(2017, 6, 5), length: 3, description: "Taste the Luxembourgish wild", is_outside: true, is_dirty: true, is_food: false, user_id: user_id)
angers   = Horntrip.create(title: "Angers neighborhood", address: "1 place du Ralliement, Angers", price: 40, starting_day: Date.new(2017, 6, 10), length: 5, description: "It's time to become wild and discover the real life in Angers district", is_outside: true, is_dirty: true, is_food: true, user_id: user_id)
auvergne = Horntrip.create(title: "Auvergne vulcano", address: "Avenue de la Gare, Gannat", price: 90, starting_day: Date.new(2017, 7, 5), length: 3, description: "Fight with Auvergne vulcano", is_outside: false, is_dirty: true, is_food: true, user_id: user_id)
un       = Booking.create(user: mike, horntrip: amazonie)
deux     = Booking.create(user: jacques, horntrip: auvergne)
trois    = Booking.create(user: marco, horntrip: angers)
quatre    = Booking.create(user_id: user_id, horntrip: angers)
puts 'Finished !'
