class RemoveNoFromQuestions < ActiveRecord::Migration[5.1]
  def change
  	remove_column :questions, :no, :string
  end
end
