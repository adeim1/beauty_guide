class Answer < ApplicationRecord
  belongs_to :question
  has_many :user_answers
  validates :description, presence: true
  validates :points, numericality: true
end
