class DeleteColumnFromAnswer < ActiveRecord::Migration[5.1]
  def change
  	remove_column :answers, :jawaban_25, :string
  	remove_column :answers, :jawaban_26, :string
  	remove_column :answers, :jawaban_27, :string
  	remove_column :answers, :jawaban_28, :string
  	remove_column :answers, :jawaban_29, :string
  	remove_column :answers, :jawaban_30, :string
  end
end
