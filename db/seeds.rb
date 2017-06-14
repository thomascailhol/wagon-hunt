# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Destroy by hand w/ rails db:drop
# Product.destroy_all
# User.destroy_all # ne surtout pas lancer en production

thomas = User.create(email: 'thomas@waver.co', password: 'testtest')
remi = User.create(email: 'remi@waver.co', password: 'testtest')
kelly = User.create(email: 'kelly@waver.co', password: 'testtest')
jules = User.create(email: 'jules@waver.co', password: 'testtest')

Product.create!(user: thomas, name: 'Kudoz', url: 'http://getkudoz.com', tagline: "Tinder for jobs", category: "tech")
Product.create!(user: kelly, name: 'Panoragram', url: 'http://panoragr.am', tagline: "Panoramas on Instagram", category: "tech")
Product.create!(user: kelly, name: 'Waver', url: 'http://waver.co', tagline: "Take better decisions", category: "tech")
Product.create!(user: jules, name: 'InVision', url: 'http://invision.com', tagline: "A sweet design tool", category: "design")
Product.create!(user: remi, name: 'OpenClassRooms', url: 'http://openclassrooms.com', tagline: "Learn coding", category: "education")

# "!" pour declencher erreur si un pb
