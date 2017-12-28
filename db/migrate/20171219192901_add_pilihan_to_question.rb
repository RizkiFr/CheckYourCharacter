class AddPilihanToQuestion < ActiveRecord::Migration[5.1]
  def change
  	add_column :questions, :dominance, :string
  	add_column :questions, :influence, :string
  	add_column :questions, :steadiness, :string
  	add_column :questions, :compliance, :string
  end
end
