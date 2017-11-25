class AddProfilPicturesToStudents < ActiveRecord::Migration[5.1]
  def change
  	add_column :students, :profil_picture, :string
  end
end
