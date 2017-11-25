class RemoveProfilePictureFromStudents < ActiveRecord::Migration[5.1]
  def change
  	remove_column :students, :profile_picture, :string
  end
end
