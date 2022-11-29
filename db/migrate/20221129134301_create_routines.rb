class CreateRoutines < ActiveRecord::Migration[7.0]
  def change
    create_table :routines do |t|
      t.string :name
      t.text :description
      t.integer :points_range
      t.string :am_pm

      t.timestamps
    end
  end
end
