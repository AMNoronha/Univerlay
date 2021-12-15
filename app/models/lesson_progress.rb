class LessonProgress < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  validates :current_step, numericality: true
end
