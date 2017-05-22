# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating users...'
Mike     = User.create(email: 'mikehorn@gmail.com', password: '123456')
Jacques  = User.create(email: 'jacquescousteau@gmail.com', password: '123456')
Marco    = User.create(email: 'marcopolo@gmail.com', password: '123456')
