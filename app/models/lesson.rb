class Lesson < ApplicationRecord
  pg_search_scope :search_by_title,
  against: [ :title ],
  using: {
    tsearch: { prefix: true }
  }

  has_many :lesson_progresses, dependent: :destroy
  has_many :lesson_steps, dependent: :destroy
  has_many :users, through: :lesson_progresses

  validates :title, presence: true
end
