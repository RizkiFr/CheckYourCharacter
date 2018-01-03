class DeleteConfirmationAtFromUsers < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :confirmation_at, :datetime
  end
end
