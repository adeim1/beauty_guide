class Routine < ApplicationRecord
  has_many :routine_products
  validates :am_pm, inclusion: { in: %w(am pm),
    message: "%{value} is not valid" }
  validates :name, presence: true
  validates :description, presence: true
  validates :points_range, presence: true
  validates :am_pm, presence: true
end
