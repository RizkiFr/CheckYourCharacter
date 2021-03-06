class AddConfirmationToUsers < ActiveRecord::Migration[5.1]
  def change
  	## Corfirmation
  	add_column :users, :confirmation_token, :string
  	add_column :users, :confirmation_at, :datetime
  	add_column :users, :confirmation_sent_at, :datetime
  	add_column :users, :unconfirmed_email, :string

  	add_column :users, :failed_attempts, :integer, default: 0, null: false 
		add_column :users, :unlock_token, :string  	
		add_column :users, :locked_at, :datetime
  end
end
