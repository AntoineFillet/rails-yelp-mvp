# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Royal Moceau',
    address:      '37 Avenue Hoche, 75008 Paris',
    phone_number:  '01 42 99 88 00',
    category:        'french'
  },
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '00 44 207 26395',
    category:        'italian'
  },
  {
    name:         'Oriental',
    address:      '1245 New Road, Bangkok 200766',
    phone_number:  '00 207 457 76678',
    category:        'japanese'
  },
  {
    name:         'Zhong guo',
    address:      'Tian an men street, Beijing 109',
    phone_number:  '00 34 45677 664.',
    category:        'chinese'
  },
  {
    name:         'Sayonara',
    address:      'Ginza , Tokyo Japan',
    phone_number:  '00 45 7688 998',
    category:        'japanese'
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
