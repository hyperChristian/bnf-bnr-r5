class AddImagetextToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :imagetext, :string
  end
end
