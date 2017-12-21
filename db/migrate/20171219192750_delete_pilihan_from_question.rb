class DeletePilihanFromQuestion < ActiveRecord::Migration[5.1]
  def change
  	remove_column :questions, :pilihan_A, :string
  	remove_column :questions, :pilihan_B, :string
  	remove_column :questions, :pilihan_C, :string
  	remove_column :questions, :pilihan_D, :string
  end
end
