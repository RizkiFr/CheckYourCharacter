class AddNoTeleponToStudents < ActiveRecord::Migration[5.1]
  def change
  	add_column :students, :no_telepon, :string
  end
end
