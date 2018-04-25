class AddCategorytypeToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :categorytype, :string
  end
end
