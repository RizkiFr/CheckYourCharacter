class RemoveProfilPictureFromStudents < ActiveRecord::Migration[5.1]
  def change
  	remove_column :students, :profil_picture, :string
  end
end
