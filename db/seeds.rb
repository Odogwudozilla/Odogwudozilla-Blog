# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Odogwu.create!(email: "admin@odogwudozilla.com",
#   password:              "odogwu",
#   password_confirmation: "odogwu",
#   superadmin_role: true)
# (rand(10..30)).join('.')
# body = Faker::Lorem.paragraphs(rand(50..100)).join('\n')
# posts = Post.order(:created_at).take(6)
5.times do
  title = Faker::LordOfTheRings.character
  banner_image_url = Faker::Avatar.image
  body = Faker::Lorem.paragraphs(rand(10..15))
  category = Faker::Number.between(1, 5)
  author = Faker::Number.between(1, 2)
  Post.create!(title: title, banner_image_url: banner_image_url, body: body, category_id: category, odogwu_id: author)
end