class RemoveJawabanFromQuestions < ActiveRecord::Migration[5.1]
  def change
  	remove_column :questions, :jawaban, :string
  end
end
