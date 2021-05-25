# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'craigsy@ga.co', :password => 'chicken', :password_confirmation => 'chicken'
u2 = User.create :email => 'jonesy@ga.co', :password => 'chicken',:password_confirmation => 'chicken'
9.times do |n|
  email = "example-#{n+1}@ga.co"
  password = "chicken"
  User.create!(
               email: email,
               password:              password,
               password_confirmation: password)
  end
puts "#{ User.count } users"

Subscriber.destroy_all
9.times do |n|
  first_name  = Faker::Name.first_name
  last_name  = Faker::Name.last_name
  email = "example-#{n+1}@ga.co"
  Subscriber.create!(
    first_name:  first_name,
    last_name:  last_name,
    email: email,
    deals: true,
    reviews: true,
    packages: true,
    star_ships: true,
    mars: true,
    jupiter: true,
    moon: true,
    saturn: true,
    uranus: true,
    neptune: true,
    the_nearest_black_hole: true,
    the_endless_void: true,
    the_sun: true,
    pluto: false,
    mercury: true,
    venus: true,
    frequency: "1 Week"
  )
  end
puts "#{ Subscriber.count } subscribers"