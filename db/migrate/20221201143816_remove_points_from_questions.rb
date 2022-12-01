class RemovePointsFromQuestions < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :points
  end
end
