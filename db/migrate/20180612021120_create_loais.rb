class CreateLoais < ActiveRecord::Migration[5.2]
  def change
    create_table :loais do |t|
      t.string :loaihang

      t.timestamps
    end
  end
end
