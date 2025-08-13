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
Flat.destroy_all

puts "Creating flats..."
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  image: 'londre.jpg'
)

Flat.create!(
  name: 'Cozy Studio in Paris',
  address: '25 Rue de la Paix, 75002 Paris',
  description: 'Charming studio in the heart of Paris, close to the Louvre and the Opera.',
  price_per_night: 120,
  number_of_guests: 2,
  image: 'paris.jpg'
)

Flat.create!(
  name: 'Modern Apartment with Sea View Barcelona',
  address: 'Passeig de Gràcia 101, 08008 Barcelona',
  description: 'Bright and modern apartment with stunning sea views, 5 minutes from the beach.',
  price_per_night: 95,
  number_of_guests: 4,
  image: 'barcelone.jpg'
)

Flat.create!(
  name: 'Rustic Mountain Cabin Chamonix',
  address: '12 Route du Mont Blanc, 74400 Chamonix',
  description: 'Cozy wooden cabin in the mountains, perfect for skiing or hiking holidays.',
  price_per_night: 150,
  number_of_guests: 6,
  image: 'chamonix.jpg'
)

puts "Finished!"
