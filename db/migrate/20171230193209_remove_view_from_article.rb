class RemoveViewFromArticle < ActiveRecord::Migration[5.1]
  def change
  	remove_column :articles, :view, :string
  end
end
