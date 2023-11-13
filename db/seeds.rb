# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Review.all.destroy
# puts 'Review destroyed'

Restaurant.all.destroy
puts 'Restaurant destroyed'

bristol = Restaurant.new(name: "Epicure", category: "french")
bristol.address = "75008 Paris"
bristol.save

pistol = Restaurant.new(name: "Pistolero", category: "italian")
pistol.address = "75002 Paris"
pistol.save

madoname = Restaurant.new(name: "Madona'Me", category: "italian")
madoname.address = "33000 Bordeaux"
madoname.save

sushi = Restaurant.new(name: "Sushi Shop", category: "japanese")
sushi.address = "33100 Begles"
sushi.save

leon = Restaurant.new(name: "Leon de Bruxelles", category: "belgian")
leon.address = "33600 Villenave"
leon.save

puts 'Restaurant creations'
# puts 'Review creations'
