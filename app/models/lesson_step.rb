class LessonStep < ApplicationRecord
  belongs_to :lesson
  validates :pop_up_text, presence: true
  validates :sequence, presence: true, numericality: true
  validates :url, presence: true
  validates :lesson_id, presence: true
end
