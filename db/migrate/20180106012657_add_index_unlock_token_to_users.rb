class AddIndexUnlockTokenToUsers < ActiveRecord::Migration[5.1]
  def change
  	    add_index :users, :unlock_token, unique: true
  end
end
