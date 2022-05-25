# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
rotund = { name: "Rotund", address: "47 Obese St, London W6 42P", category: "japanese" }
girth = { name: "Girth", address: "31 Flabby St, London S3 89Z", category: "french" }
whale = { name: "Whale", address: "9 Wide Avenue, London N3 1PS", category: "belgian" }

[dishoom, pizza_east, rotund, girth, whale].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
