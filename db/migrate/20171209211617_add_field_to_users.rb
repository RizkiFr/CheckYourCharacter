class AddFieldToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :nim, :string
  	add_column :users, :nama, :string
  	add_column :users, :jenis_kelamin, :string
  	add_column :users, :alamat, :text
  	add_column :users, :tempat_lahir, :string
  	add_column :users, :tgl_lahir, :date
  	add_column :users, :jurusan, :string
  	add_column :users, :fakultas, :string
  	add_column :users, :kepribadian, :string
  	add_column :users, :no_telepon, :string
  	add_column :users, :keterangan, :string
  	add_column :users, :profile_picture, :string
  end
end
