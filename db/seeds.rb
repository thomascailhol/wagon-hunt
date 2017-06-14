# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

Product.create!(name: 'Kudoz', url: 'http://getkudoz.com', tagline: "Tinder for jobs", category: "tech")
Product.create!(name: 'Panoragram', url: 'http://panoragr.am', tagline: "Panoramas on Instagram", category: "tech")
Product.create!(name: 'Waver', url: 'http://waver.co', tagline: "Take better decisions", category: "tech")
Product.create!(name: 'InVision', url: 'http://invision.com', tagline: "A sweet design tool", category: "design")
Product.create!(name: 'OpenClassRooms', url: 'http://openclassrooms.com', tagline: "Learn coding", category: "education")

# "!" pour declencher erreur si un pb
