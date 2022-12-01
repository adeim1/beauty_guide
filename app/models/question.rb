class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers
  validates :description, presence: true
  validates :has_points, precence: true
  validates :points, numericality: true
  has_many :points, precence: true
end
