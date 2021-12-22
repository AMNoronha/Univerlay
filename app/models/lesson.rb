class Lesson < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_title,
    against: [ :title ],
    using: {
      tsearch: { prefix: true }
    }

  has_many :lesson_progresses, dependent: :destroy
  has_many :lesson_steps, dependent: :destroy
  has_many :users, through: :lesson_progresses
  has_many_attached :photos

  validates :title, presence: true
  validates :photos, presence: true
end
