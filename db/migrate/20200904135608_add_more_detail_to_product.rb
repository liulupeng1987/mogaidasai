class AddMoreDetailToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :brand, :string
    add_column :products, :model, :string
    add_column :products, :country, :string
    add_column :products, :character, :text
  end
end
