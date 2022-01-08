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

# LessonProgress.create!(
#   user_id: 1,
#   lesson_id: 1,
#   current_step: 1
# )

# LessonProgress.create!(
#   user_id: 2,
#   lesson_id: 1,
#   current_step: 1
# )

# LessonProgress.create!(
#   user_id: 1,
#   lesson_id: 3,
#   current_step: 1
# )

# puts "Lesson progresses created!"

LessonStep.create!(
  lesson_id: 1,
  title: "Step 1",
  DOM_Id: ".octicon.octicon-plus",
  pop_up_text: "Select 'New repository'",
  sequence: 1,
  url: "^https://github.com/$"
)

LessonStep.create!(
  lesson_id: 1,
  title: "Step 2",
  DOM_Id: ".js-template-repository-select",
  pop_up_text: "Select a template, if you would like to (not necessary)",
  sequence: 2,
  url: "^https://github.com/new$"
)

LessonStep.create!(
  lesson_id: 1,
  title: "Step 3",
  DOM_Id: "#repository_name",
  pop_up_text: "Enter short memorable name for the repository",
  sequence: 3,
  url: "^https://github.com/new$"
)

LessonStep.create!(
  lesson_id: 1,
  title: "Step 4",
  DOM_Id: "#repository_description",
  pop_up_text: "Enter a short description if you'd like to do so",
  sequence: 4,
  url: "^https://github.com/new$"
)

LessonStep.create!(
  lesson_id: 1,
  title: "Step 5",
  DOM_Id: ".js-privacy-toggle-label-public",
  pop_up_text: "Select if your repository should be public or private",
  sequence: 5,
  url: "^https://github.com/new$"
)

LessonStep.create!(
  lesson_id: 1,
  title: "Step 6",
  DOM_Id: "#repository_auto_init",
  pop_up_text: "We suggest clicking this to add a README file",
  sequence: 6,
  url: "^https://github.com/new$"
)

LessonStep.create!(
  lesson_id: 1,
  title: "Step 7",
  DOM_Id: "#repository_gitignore_template_toggle",
  pop_up_text: "We also suggest adding a .gitignore file",
  sequence: 7,
  url: "^https://github.com/new$"
)

LessonStep.create!(
  lesson_id: 1,
  title: "Step 8",
  DOM_Id: "#repository_license_template_toggle",
  pop_up_text: "Add a license if desired",
  sequence: 8,
  url: "^https://github.com/new$"
)

LessonStep.create!(
  lesson_id: 1,
  title: "Step 9 ALMOST DONE",
  DOM_Id: ".btn-primary",
  pop_up_text: "Press to create the new respository",
  sequence: 9,
  url: "^https://github.com/new$"
)

puts "Lesson steps for Create Github Repo created!"

LessonProgress.create!(
  user_id: 1,
  lesson_id: 3,
  current_step: 1
)
LessonStep.create!(
  lesson_id: 3,
  title: "Step 1",
  DOM_Id: "#pull-requests-tab",
  pop_up_text: "At your local repository (on your terminal), make sure you have run git add, git commit & git push origin branch-name",
  sequence: 1,
  url: "^https://github.com/\\w+/\\w+-?\\w*-?\\w*-?\\w*$"
)
LessonStep.create!(
  lesson_id: 3,
  title: "Step 2",
  DOM_Id: ".flex-shrink-0.btn.btn-primary.ml-sm-3.mt-2.mt-sm-n2.mb-sm-n2.mr-sm-n1.flex-self-center",
  pop_up_text: "Click the compare & pull request button",
  sequence: 2,
  url: "^https://github.com/.+/.+/pulls$"
)
# LessonStep.create!(
#   lesson_id: 3,
#   title: "Step 3",
#   DOM_Id: "#pull_request_title",
#   pop_up_text: "Enter short memorable title for this pull request",
#   sequence: 3,
#   url: "^https://github.com/.+/.+/pulls$"
# )
# LessonStep.create!(
#   lesson_id: 3,
#   title: "Step 4",
#   DOM_Id: "#pull_request_body",
#   pop_up_text: "Write comments on what changes you have made to the code",
#   sequence: 4,
#   url: "^https://github.com/.+/.+/pulls$"
# )
# LessonStep.create!(
#   lesson_id: 3,
#   title: "Step 5",
#   DOM_Id: ".BtnGroup",
#   pop_up_text: "Click the Create Pull Request button",
#   sequence: 5,
#   url: "^https://github.com/.+/.+/pulls$"
# )
# LessonStep.create!(
#   lesson_id: 3,
#   title: "Step 6",
#   DOM_Id: ".btn-group-merge",
#   pop_up_text: "Click the merge button if there are no conflicts with the base branch",
#   sequence: 6,
#   url: "^https://github.com/.+/.+/pulls$"
# )
# LessonStep.create!(
#   lesson_id: 3,
#   title: "Step 7",
#   DOM_Id: "#.btn-primary",
#   pop_up_text: "Click the confirm merge button",
#   sequence: 7,
#   url: "^https://github.com/.+/.+/pulls$"
# )

puts "Lesson steps for Create Pull Request created!"
