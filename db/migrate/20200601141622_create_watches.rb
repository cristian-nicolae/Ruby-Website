class CreateWatches < ActiveRecord::Migration[6.0]
  def change
    create_table :watches do |t|
      t.string :brand
      t.string :model
      t.text :description
      t.string :condition
      t.string :color
      t.string :title
      t.decimal :price, precision: 5, scale: 2, default: "0.0"

      t.timestamps
    end
  end
end
