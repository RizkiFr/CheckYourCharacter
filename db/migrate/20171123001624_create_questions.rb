class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text 	 :pertanyaan
      t.string :pilihan_A
      t.string :pilihan_B
      t.string :pilihan_C
      t.string :pilihan_D
      t.string :jawaban

      t.timestamps
    end
  end
end
