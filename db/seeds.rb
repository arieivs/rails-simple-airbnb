# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'

3.times do
  url = 'https://source.unsplash.com/1600x900/?flat'
  Flat.create!(
    name: Faker::Quote.singular_siegler,
    address: Faker::Address.full_address,
    description: Faker::Quote.matz,
    price_per_night: rand(10..200),
    number_of_guests: rand(1..10),
    image_src: url
  )
end
