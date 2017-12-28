class DeletePertanyaanFromQuestion < ActiveRecord::Migration[5.1]
  def change
  	remove_column :questions, :pertanyaan, :string
  end
end
