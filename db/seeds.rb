# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying  my flats"
Flat.destroy_all

puts "Creating new ones"

5.times do
  new_flat = Flat.new(
    name: Faker::Games::SonicTheHedgehog.character,
    address: Faker::Address.full_address,
    description: Faker::GreekPhilosophers.quote,
    price_per_night: rand(50..150),
    number_of_guests: rand(1..10)
  )
  new_flat.save!
end

puts "I'm done"
