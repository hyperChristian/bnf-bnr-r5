class AddShowpostToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :showpost, :boolean
  end
end
