class Routine < ApplicationRecord
  has_many :routine_products
  has_many :products, through: :routine_products
  validates :am_pm, inclusion: { in: %w(AM PM),
    message: "%{value} is not valid" }
  validates :name, presence: true
  validates :points_range, presence: true
  validates :am_pm, presence: true
end
