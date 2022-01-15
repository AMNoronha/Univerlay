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
  title: "Create a new Github repository"
)

repo.photo.attach(io: File.open(Rails.root.join('app/assets/images/github-repo.jpeg')), filename: 'github-repo.jpeg')

import_repo = Lesson.create!(
  title: "Import an existing repository into Github"
)

import_repo.photo.attach(io: File.open(Rails.root.join('app/assets/images/github-branch.jpeg')), filename: 'github-branch.jpeg')

fork_repo = Lesson.create!(
  title: "Fork a Github repository"
)

fork_repo.photo.attach(io: File.open(Rails.root.join('app/assets/images/github-pull.jpeg')), filename: 'github-pull.jpeg')

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

LessonProgress.create!(
  user_id: 1,
  lesson_id: 2,
  current_step: 1
)

LessonProgress.create!(
  user_id: 1,
  lesson_id: 3,
  current_step: 1
)

puts "Lesson progresses created!"

LessonStep.create!(
    lesson_id: 1,
    title: "Welcome to Univerlay's Guide to Creating a New Github Repository 🗳 ",
    DOM_Id: ".logged-in",
    pop_up_text: "Instructions:  Click ▷ NEXT to move to the next step, ◁ BACK to go back, and ESC to exit",
    sequence: 1,
    url: "^https://github.com/?"
)

LessonStep.create!(
  lesson_id: 1,
  title: "Start",
  DOM_Id: ".octicon.octicon-plus",
  pop_up_text: "Select 'New repository' and move on to next page",
  sequence: 2,
  url: "^https://github.com/?"
)

LessonStep.create!(
  lesson_id: 1,
  title: "Template",
  DOM_Id: ".js-template-repository-select",
  pop_up_text: "Select a template, if you would like to (not necessary)",
  sequence: 3,
  url: "^https://github.com/new$"
)

LessonStep.create!(
  lesson_id: 1,
  title: "Name",
  DOM_Id: "#repository_name",
  pop_up_text: "Enter short memorable name for the repository",
  sequence: 4,
  url: "^https://github.com/new$"
)

LessonStep.create!(
  lesson_id: 1,
  title: "Description",
  DOM_Id: "#repository_description",
  pop_up_text: "Enter a short description if you'd like to do so",
  sequence: 5,
  url: "^https://github.com/new$"
)

LessonStep.create!(
  lesson_id: 1,
  title: "Public or Private",
  DOM_Id: ".js-privacy-toggle-label-public",
  pop_up_text: "Select if your repository should be public or private",
  sequence: 6,
  url: "^https://github.com/new$"
)

LessonStep.create!(
  lesson_id: 1,
  title: "README file",
  DOM_Id: "#repository_auto_init",
  pop_up_text: "We suggest clicking this to add a README file",
  sequence: 7,
  url: "^https://github.com/new$"
)

LessonStep.create!(
  lesson_id: 1,
  title: ".gitignore",
  DOM_Id: "#repository_gitignore_template_toggle",
  pop_up_text: "We also suggest adding a .gitignore file",
  sequence: 8,
  url: "^https://github.com/new$"
)

LessonStep.create!(
  lesson_id: 1,
  title: "License",
  DOM_Id: "#repository_license_template_toggle",
  pop_up_text: "Add a license if desired",
  sequence: 9,
  url: "^https://github.com/new$"
)

LessonStep.create!(
  lesson_id: 1,
  title: "Create",
  DOM_Id: ".btn-primary",
  pop_up_text: "Click here to create the new respository",
  sequence: 10,
  url: "^https://github.com/new$"
)

LessonStep.create!(
  lesson_id: 1,
  title: "CONGRATULATIONS! 🎉👏🏻 🎉👏🏻 🎉👏🏻 ",
  DOM_Id: "#btn-primary",
  pop_up_text: "This ends the lesson. When you click ⏹ DONE, you will be re-directed back to your lessons page on univerlay-me.com",
  sequence: 11,
  url: "^https://github.com/new$"
)

puts "Lesson steps for Create Github Repo created!"

LessonStep.create!(
    lesson_id: 2,
    title: "Welcome to Univerlay's Guide to Importing a Repository into Github 📥 ",
    DOM_Id: ".logged-in",
    pop_up_text: "Instructions:  Click ▷ NEXT to move to the next step, ◁ BACK to go back, and ESC to exit",
    sequence: 1,
    url: "^https://github.com/?"
)

LessonStep.create!(
  lesson_id: 2,
  title: "Start",
  DOM_Id: ".octicon.octicon-plus",
  pop_up_text: "Select 'Import repository' and move on to next page",
  sequence: 2,
  url: "^https://github.com/?"
)

LessonStep.create!(
  lesson_id: 2,
  title: "Import",
  DOM_Id: "#vcs_url",
  pop_up_text: "Enter the url of an existing report that you would like to import",
  sequence: 3,
  url: "^https://github.com/new/import$"
)

LessonStep.create!(
  lesson_id: 2,
  title: "Name",
  DOM_Id: "#repository_name",
  pop_up_text: "Enter short memorable name for the repository",
  sequence: 4,
  url: "^https://github.com/new/import$"
)

LessonStep.create!(
  lesson_id: 2,
  title: "Public or Private",
  DOM_Id: "#repository_visibility_public",
  pop_up_text: "Select if your repository should be public or private",
  sequence: 5,
  url: "^https://github.com/new/import$"
)


LessonStep.create!(
  lesson_id: 2,
  title: "Begin Import",
  DOM_Id: ".btn-primary.btn",
  pop_up_text: "Click to begin importing the repository into Github",
  sequence: 6,
  url: "^https://github.com/new/import$"
)

LessonStep.create!(
  lesson_id: 2,
  title: "CONGRATULATIONS! 🎉👏🏻 🎉👏🏻 🎉👏🏻",
  DOM_Id: "#btn-primary",
  pop_up_text: "This ends the lesson. When you click DONE, you will be re-directed back to your lessons page on univerlay-me.com",
  sequence: 7,
  url: "^https://github.com/new/import$"
)

puts "Lesson steps for Import into Github created!"

LessonStep.create!(
  lesson_id: 3,
  title: "Welcome to Univerlay's Guide to Forking a Repository 🗄 ",
  DOM_Id: ".logged-in",
  pop_up_text:  "Instructions:  Click ▷ NEXT to move to the next step, ◁ BACK to go back, and ESC to exit",
  sequence: 1,
  url: "^https://github.com/?"
)

LessonStep.create!(
  lesson_id: 3,
  title: "Forking",
  DOM_Id: ".logged-in",
  pop_up_text:  "To demonstrate, we will fork another Github repo https://github.com/octocat/Spoon-Knife",
  sequence: 2,
  url: "^https://github.com/?"
)

LessonStep.create!(
  lesson_id: 3,
  title: "Forking a Repo",
  DOM_Id: ".btn-sm.btn",
  pop_up_text: "Click Fork and decide where to save your fork (usually your own repo)",
  sequence: 3,
  url: "^https://github.com/.+/Spoon-Knife$"
)

LessonStep.create!(
  lesson_id: 3,
  title: "Navigate to Your Version (Forked)",
  DOM_Id: ".logged-in",
  pop_up_text: "You now have a copy of the repo; we will now proceed to download this version so you may modify it",
  sequence: 4,
  url: "^https://github.com/.+/Spoon-Knife$"
)

LessonStep.create!(
  lesson_id: 3,
  title: "Clone",
  DOM_Id: ".btn-primary.btn",
  pop_up_text: "Click on code to learn how to clone this forked repo",
  sequence: 5,
  url: "^https://github.com/.+/Spoon-Knife$"
)

LessonStep.create!(
  lesson_id: 3,
  title: "Methods",
  DOM_Id: ".logged-in",
  pop_up_text: "Clone with HTTPS, SSH, or Github CLI. We will use SSH.",
  sequence: 6,
  url: "^https://github.com/.+/Spoon-Knife$"
)

LessonStep.create!(
  lesson_id: 3,
  title: "Open Terminal",
  DOM_Id: ".logged-in",
  pop_up_text: "Open Terminal. Change the current directory to the location where you want your cloned repo.",
  sequence: 7,
  url: "^https://github.com/.+/Spoon-Knife$"
)

LessonStep.create!(
  lesson_id: 3,
  title: "Git Clone",
  DOM_Id: ".logged-in",
  pop_up_text: "Enter git clone https://github.com/YOUR-USERNAME/Spoon-Knife",
  sequence: 8,
  url: "^https://github.com/.+/Spoon-Knife$"
)

LessonStep.create!(
  lesson_id: 3,
  title: "CONGRATULATIONS! 🎉👏🏻 🎉👏🏻 🎉👏🏻",
  DOM_Id: ".logged-in",
  pop_up_text: "This ends the lesson. When you click DONE, you will be re-directed back to your lessons page on univerlay-me.com",
  sequence: 9,
  url: "^https://github.com/.+/Spoon-Knife$"
)
puts "Lesson steps for Fork Github repo created!"
