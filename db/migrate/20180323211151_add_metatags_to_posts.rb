class AddMetatagsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :metatags, :text
  end
end
