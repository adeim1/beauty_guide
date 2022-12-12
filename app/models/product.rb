class Product < ApplicationRecord
  has_many :routine_products
  validates :name, presence: true
  validates :price, presence: true
  belongs_to :category
  has_one_attached :photo
end
