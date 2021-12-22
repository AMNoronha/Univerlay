# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.create!(
  name: "Tester 1",
  email: "test@test.com",
  phone_number: "98765432",
  password: "test12"
)

User.create!(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  password: "654321"
)

puts "Users created!"

Lesson.create!(
  title: "Create Github repository"
)

Lesson.create!(
  title: "Create a branch on Github"
)

Lesson.create!(
  title: "Opening a pull request on Github"
)

puts "Lessons created!"

LessonProgress.create!(
  user_id: 1,
  lesson_id: 1,
  current_step: 1
)

LessonProgress.create!(
  user_id: 2,
  lesson_id: 1,
  current_step: 1
)

puts "Lesson progresses created!"
