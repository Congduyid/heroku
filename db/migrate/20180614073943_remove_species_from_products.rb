class RemoveSpeciesFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :species, :string
  end
end
