class LessonProgress < ApplicationRecord
  acts_as_token_authenticatable
  belongs_to :user
  belongs_to :lesson
  validates :current_step, numericality: true
end
