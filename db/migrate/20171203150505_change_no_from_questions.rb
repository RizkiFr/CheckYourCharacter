class ChangeNoFromQuestions < ActiveRecord::Migration[5.1]
  def change
  	change_column :questions, :no, :string
  end
end
