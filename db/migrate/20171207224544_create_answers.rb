class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
    	t.string :jawaban_1
    	t.string :jawaban_2
    	t.string :jawaban_3
    	t.string :jawaban_4
    	t.string :jawaban_5
    	t.string :jawaban_6
    	t.string :jawaban_7
    	t.string :jawaban_8
    	t.string :jawaban_9
    	t.string :jawaban_10
      t.timestamps
    end
  end
end
