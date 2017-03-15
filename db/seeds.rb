# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
City.delete_all
cities = City.create([
  { name: "San Francisco", image: "#"}, 
  { name: "London", image: "#"},
  { name: "Gibraltar", image:"#"}
  ])

users = User.create([
  {name: "Kody Lawton", email: "k@l", password: "123", current_city: "San Francisco"},
  {name: "Regelyn Cacho", email: "r@c", password: "123", current_city: "San Francisco"},
  {name: "Ivan Miranda", email: "i@m", password: "123", current_city: "San Francisco"}
])


