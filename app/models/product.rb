class Product < ApplicationRecord
  has_many :routine_products
  validates :type, inclusion: { in: %w(spf cleanser toner cream),
    message: "%{value} is not a valid product type" }
  validates :name, presence: true
  validates :price, presence: true
  validates :type, presence: true
end
