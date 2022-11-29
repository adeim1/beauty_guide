class CreateRoutineProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :routine_products do |t|
      t.references :product, null: false, foreign_key: true
      t.references :routine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
