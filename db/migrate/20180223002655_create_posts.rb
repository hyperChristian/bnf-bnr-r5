class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.boolean :publish
      t.references :category, index: true, foreign_key: true
      t.references :moderator, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
