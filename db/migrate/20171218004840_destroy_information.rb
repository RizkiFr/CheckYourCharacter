class DestroyInformation < ActiveRecord::Migration[5.1]
  def change
  	drop_table :information
  end
end
