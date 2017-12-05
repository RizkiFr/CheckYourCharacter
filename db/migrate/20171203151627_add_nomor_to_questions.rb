class AddNomorToQuestions < ActiveRecord::Migration[5.1]
  def change
  	add_column :questions, :no, :integer
  end
end
