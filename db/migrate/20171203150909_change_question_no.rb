class ChangeQuestionNo < ActiveRecord::Migration[5.1]
  def change
  	reversible do |dir|
      change_table :questions do |t|
        dir.up   { t.change :no, :string }
        dir.down { t.change :no, :integer }
      end
    end
  end
end
