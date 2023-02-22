# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

restaurants = [{ name: 'Takumi', address: 'Koeln', phone_number: '015758781438', category: 'japanese' }, { name: 'Mangal', address: 'Koeln', phone_number: '015763456457', category: 'turkish' }, { name: 'BellaItalia', address: 'Koeln', phone_number: '01575462767', category: 'italian'}]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
  puts "Created #{restaurant[:name]}"
end
