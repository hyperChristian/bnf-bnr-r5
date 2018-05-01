class AddDocumentToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :document, :string
  end
end
