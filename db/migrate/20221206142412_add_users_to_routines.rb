class AddUsersToRoutines < ActiveRecord::Migration[7.0]
  def change
    add_reference :routines, :user, foreign_key: true
  end
end
