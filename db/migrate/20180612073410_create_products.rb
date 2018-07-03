class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, :precision => 20, :scale => 2
      t.string :species

      t.boolean :hot
      t.references :loai, foreign_key: true
      t.timestamps
    end
  end
end
