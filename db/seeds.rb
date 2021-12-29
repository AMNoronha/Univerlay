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

repo = Lesson.create!(
  title: "Create Github repository"
)

repo.photo.attach(io: File.open(Rails.root.join('app/assets/images/github-repo.jpeg')), filename: 'github-repo.jpeg')

branch = Lesson.create!(
  title: "Create a branch on Github"
)

branch.photo.attach(io: File.open(Rails.root.join('app/assets/images/github-branch.jpeg')), filename: 'github-branch.jpeg')

pull = Lesson.create!(
  title: "Opening a pull request on Github"
)

pull.photo.attach(io: File.open(Rails.root.join('app/assets/images/github-pull.jpeg')), filename: 'github-pull.jpeg')

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

LessonStep.create!(
  lesson_id: 1,
  pop_up_text: "Select new repository",
  sequence: 1,
  url: "url"
)

LessonStep.create!(
  lesson_id: 1,
  pop_up_text: "In the Repository name box, enter hello-world.",
  sequence: 2,
  url: "url"
)

LessonStep.create!(
  lesson_id: 1,
  pop_up_text: "In the Description box, write a short description.",
  sequence: 3,
  url: "url"
)

LessonStep.create!(
  lesson_id: 1,
  pop_up_text: "Select Add a README file.",
  sequence: 4,
  url: "url"
)

LessonStep.create!(
  lesson_id: 1,
  pop_up_text: "Click Create repository.",
  sequence: 5,
  url: "url"
)
