# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

100.times do |i|
  offer = Offer.create!({
    id: (i + 1),
    description: Faker::Marketing.buzzwords, 
    target_gender: ['male', 'female'].sample, 
    target_age: (rand(18..60)..rand(61..100))
  })

  puts "created #{offer}"
end