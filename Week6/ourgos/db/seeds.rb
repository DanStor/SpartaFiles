# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: Faker::HitchhikersGuideToTheGalaxy.specie, description: Faker::HitchhikersGuideToTheGalaxy.quote, stock: 4, price: 99.99, picture: "weightliftDuck.png")
Product.create(name: Faker::Dota.item, description: Faker::HitchhikersGuideToTheGalaxy.marvin_quote, stock: 18, price: 499.99)
Product.create(name: Faker::HitchhikersGuideToTheGalaxy.starship, description: Faker::HitchhikersGuideToTheGalaxy.quote, stock: 33, price: 50.00)
Product.create(name: Faker::HitchhikersGuideToTheGalaxy.starship, description: Faker::HitchhikersGuideToTheGalaxy.marvin_quote, stock: 42, price: 145.99)
Product.create(name: Faker::Dota.item, description: Faker::HitchhikersGuideToTheGalaxy.quote, stock: 512, price: 111.50)
Product.create(name: Faker::Dota.item, description: Faker::HitchhikersGuideToTheGalaxy.marvin_quote, stock: 211, price: 79.00)
