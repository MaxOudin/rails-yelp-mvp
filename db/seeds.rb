# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

puts "create 5 restaurants"

tripletta = Restaurant.new(name: 'La Tripletta', address: 'Cours du Medoc', category: 'italian')
tripletta.save

fufu = Restaurant.new(name: 'Fufu', address: 'chartrons', category: 'chinese')
fufu.save

sushi = Restaurant.new(name: 'Sushishop', address: 'paul doumer', category: 'japanese')
sushi.save

moules = Restaurant.new(name: 'Leon bruxelles', address: 'pessac', category: 'belgian')
moules.save

latanniere = Restaurant.new(name: 'La tanniere', address: 'st michel', category: 'french')
latanniere.save

yummy = Review.new(content: "yummy yummy", rating: 4)
yummy.restaurant = tripletta
yummy.save

very = Review.new(content: "very good", rating: 4)
very.restaurant = sushi
very.save

bof = Review.new(content: "bof", rating: 3)
bof.restaurant = moules
bof.save

great = Review.new(content: "great", rating: 5)
great.restaurant = fufu
great.save

excellent = Review.new(content: "excellent", rating: 5)
excellent.restaurant = latanniere
excellent.save

puts "Done!"
