# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Comment.destroy_all
Post.destroy_all
User.destroy_all


categories = Category.create([
    {name: "Mathematics"},
    {name: "Litreture"},
    {name: "Physics"},
    {name: "Medicine"}
  ])
users = User.create([
    {first_name: "Farshid", last_name: "HM", email: "admin@admin.com", password: "pass123"},
    {first_name: "Homer", last_name: "Simpson", email: "Homer@admin.com", password: "pass123"}
  ])


100.times do
    Post.create({
      title: Faker::StarWars.quote,
      body: Faker::StarWars.wookie_sentence,
      user: users.sample,
      category: categories.sample
      })
end

posts = Post.all

posts.each do |post|
  rand(5).times do
    Comment.create(body: Faker::ChuckNorris.fact,
                   user: users.sample,
                   post: post
    )
  end
end

puts 'Done!'
