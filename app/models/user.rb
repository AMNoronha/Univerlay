class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :lesson_progresses, dependent: :destroy
  has_many :lessons, through: :lesson_progresses
  has_one_attached :photo

  validates :name, length: { minimum: 3, maximum: 50 }, uniqueness: true, presence: true
  validates :phone_number, length: { minimum: 8, maximum: 14 }, presence: true
end
