class Answer < ApplicationRecord
  belongs_to :question
  has_many :user_answers
  validates :text, presence: true
  validates :points, numericality: true
end
