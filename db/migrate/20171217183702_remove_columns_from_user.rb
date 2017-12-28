class RemoveColumnsFromUser < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :jurusan, :string
  	remove_column :users, :fakultas, :string
  end
end
