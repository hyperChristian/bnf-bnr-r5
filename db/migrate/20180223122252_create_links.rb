class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :title
      t.string :url
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
