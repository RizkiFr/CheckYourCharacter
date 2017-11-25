class AddKepribadianToStudents < ActiveRecord::Migration[5.1]
  def change
  	add_column :students, :kepribadian, :string
  end
end
