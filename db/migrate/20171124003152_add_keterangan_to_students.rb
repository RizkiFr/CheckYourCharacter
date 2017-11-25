class AddKeteranganToStudents < ActiveRecord::Migration[5.1]
  def change
  	add_column :students, :keterangan, :string
  end
end
