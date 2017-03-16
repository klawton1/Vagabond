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

kody = User.create({ name: "Kody Lawton", email: "k@l", password: "123", current_city: "San Francisco", image: "https://tse1.mm.bing.net/th?id=OIP._NbvGs2a0L-dAarZKYu9lQEsDx&w=249&h=198&c=7&qlt=90&o=4&pid=1.7"})
reg = User.create({ name: "Regelyn Cacho", email: "r@c", password: "123", current_city: "San Francisco"})
ivan = User.create({ name: "Ivan Miranda", email: "i@m", password: "123", current_city: "San Francisco", image: "https://lh3.googleusercontent.com/0a3S_7nhJUS70krz1hloB1QwukmY33yuQxit_2yhEqbzMa0ognxkdeeOZD59VmeVcNCr3-_7M1zKZJy7DgeBoLE3Qs043Psyde0MIHe77PplblKHDvf_wZPcEMrCBAToVVbtJFJEpegx0VDLj_EUPEjlEp-InQCd1djDXdkPZnceLvebiLP8gqB69R1R-kv_2lfN7kk2pMwi7dkQydZ7iZ0qraksgAZQqsNDbZyY8HBQeMdps1OSzPWzfJzfLwKZCpfUc0WjhBp8RHUZN8DV8uibKgx80LXC3bV5UEuVf40Lz9lxWUE-3BQ1HlQjaTpsO4fADGyZDwclkGY5b9GROL1RNBAM5K7cj354SKPIR0mKWHqW4JokSsh9AhUaMHTThPECwYw3uVIjybOcJ5Y8N0ZBYmIl6hs6JGuMbUkCggwpN6SP84Xyi602s-jXf-4rC9H7vf7vlOoN9MUusQQeslUU2WLj8T8im3VC7A5NTizuAhpC6jPXuQRXuaT1MkpbNOBGlrM90YsM-kJ63Wr9Uz6P9bxmIYxk5G87lZPgdy1_EfkJignpH78Tjkf15N_CwpOS6DWM1hpmvhVhKyUW4GBWg7TjOwpmK7xTYF6ozRkz8Yy0dzfRAMlucyZ7SjFteZW1fejvKkN403iOmlxPoQCvleOf30XEfzKHn9Udsw=w1215-h694-no"})

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
