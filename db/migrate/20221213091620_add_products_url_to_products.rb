class AddProductsUrlToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :products_url, :string
  end
end
