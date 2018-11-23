# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(title: "Post 1", body: Faker::HitchhikersGuideToTheGalaxy.marvin_quote, author: Faker::LordOfTheRings.character, date: "10/03/2018 21:55:06")
Post.create(title: "Post 2", body: Faker::HitchhikersGuideToTheGalaxy.marvin_quote, author: Faker::LordOfTheRings.character, date: "10/03/2018 21:55:06")
Post.create(title: "Post 3", body: Faker::HitchhikersGuideToTheGalaxy.quote, author: Faker::LordOfTheRings.character, date: "10/03/2018 21:55:06")

Comment.create(body: Faker::HitchhikersGuideToTheGalaxy.marvin_quote, post_id: 1, author: Faker::LordOfTheRings.character)
Comment.create(body: Faker::HitchhikersGuideToTheGalaxy.marvin_quote, post_id: 2, author: Faker::LordOfTheRings.character)
Comment.create(body: Faker::HitchhikersGuideToTheGalaxy.quote, post_id: 1, author: Faker::LordOfTheRings.character)
Comment.create(body: Faker::HitchhikersGuideToTheGalaxy.quote, post_id: 2, author: Faker::LordOfTheRings.character)
Comment.create(body: Faker::HitchhikersGuideToTheGalaxy.marvin_quote, post_id: 3, author: Faker::LordOfTheRings.character)
