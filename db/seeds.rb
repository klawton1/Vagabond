# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.delete_all
User.delete_all
City.delete_all
sf = City.create({ name: "San Francisco", image: "http://www.sftravel.com/sites/sftraveldev.prod.acquia-sites.com/files/field/image/site-photo.jpg"})
london = City.create({ name: "London", image: "http://ucfb.com/wp-content/uploads/2014/12/London-banner.jpg"})
gib = City.create({ name: "Gibraltar", image:"http://www.category2.com/wp-content/uploads/2017/01/cropped-gb-17.jpg"})

kody = User.create({ name: "Kody Lawton", email: "k@l", password: "123", current_city: "San Francisco"})
reg = User.create({ name: "Regelyn Cacho", email: "r@c", password: "123", current_city: "San Francisco"})
ivan = User.create({ name: "Ivan Miranda", email: "i@m", password: "123", current_city: "San Francisco"})

com1 = Comment.create(
  { title: "Avoid The Park Bathrooms...", text: "Ipsum Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
      proident, sunt in culpa qui officia deserunt mollit anim id est laborum."})
com2 = Comment.create(
  { title: "They Have Frozen BANANAS!!", text: "Ipsum Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
      proident, sunt in culpa qui officia deserunt mollit anim id est laborum."})
com3 = Comment.create(
  { title: "Watch Your Step!", text: "Ipsum Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
      proident, sunt in culpa qui officia deserunt mollit anim id est laborum."})
com4 = Comment.create(
  { title: "Has the most amazing View!", text: "Ipsum Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
      proident, sunt in culpa qui officia deserunt mollit anim id est laborum."})
com5 = Comment.create(
  { title: "They Don't Have Frozen BANANAS!!", text: "Ipsum Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
      proident, sunt in culpa qui officia deserunt mollit anim id est laborum."})
com6 = Comment.create(
  { title: "They Have Funnel Cake!!", text: "Ipsum Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
      proident, sunt in culpa qui officia deserunt mollit anim id est laborum."})
com7 = Comment.create(
  { title: "Awesome place to relax!!", text: "Ipsum Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
      proident, sunt in culpa qui officia deserunt mollit anim id est laborum."})

kody.comments << com1
sf.comments << com1

kody.comments << com2
london.comments << com2

reg.comments << com3
gib.comments << com3

reg.comments << com4
london.comments << com4

ivan.comments << com5
sf.comments << com5

ivan.comments << com6
london.comments << com6

ivan.comments << com7
gib.comments << com7
