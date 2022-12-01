class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers
  validates :description, presence: true
  # validates :has_points, precence: true
end
