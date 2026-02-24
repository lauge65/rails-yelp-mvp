# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants"
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "1111111", category: "chinese")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "2222222", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "La Table Ronde", address: "Argeles Gazost", phone_number: "333333333", category: "french")
puts "Created La Table Ronde"
Restaurant.create!(name: "Isubu", address: "San Francisco", phone_number: "444444444", category: "japanese")
puts "Created Isubu"
Restaurant.create!(name: "Au petit restaurant", address: "Bruxelles", phone_number: "55555555", category: "belgian")
puts "Created Au petit restaurant"
