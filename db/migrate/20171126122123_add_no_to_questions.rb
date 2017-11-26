class AddNoToQuestions < ActiveRecord::Migration[5.1]
  def change
  	add_column :questions, :no, :char
  end
end
