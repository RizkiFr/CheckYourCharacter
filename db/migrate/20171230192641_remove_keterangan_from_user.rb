class RemoveKeteranganFromUser < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :keterangan, :string
  end
end
