class AddProfilePicturesToStudents < ActiveRecord::Migration[5.1]
  def change
  	add_column :students, :profile_picture, :string
  end
end
