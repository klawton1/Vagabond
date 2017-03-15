# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
City.delete_all
Comment.delete_all
cities = City.create([
  { name: "San Francisco", image: "#"}, 
  { name: "London", image: "#"},
  { name: "Gibraltar", image:"#"}
])

users = User.create([
  { name: "Kody Lawton", email: "k@l", password: "123", current_city: "San Francisco"},
  { name: "Regelyn Cacho", email: "r@c", password: "123", current_city: "San Francisco"},
  { name: "Ivan Miranda", email: "i@m", password: "123", current_city: "San Francisco"}
])

comments = Comment.create([
  { title: "Avoid The Park Bathrooms...", text: "Ipsum Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
      proident, sunt in culpa qui officia deserunt mollit anim id est laborum."},
  { title: "They Have Frozen BANANAS!!", text: "Ipsum Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
      proident, sunt in culpa qui officia deserunt mollit anim id est laborum."}
])
