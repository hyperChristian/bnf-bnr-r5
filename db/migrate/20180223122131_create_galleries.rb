class CreateGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.string :title
      t.text :description
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
