class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :image
      t.text :description
      t.references :gallery, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
