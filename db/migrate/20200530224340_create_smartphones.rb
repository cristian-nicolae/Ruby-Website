class CreateSmartphones < ActiveRecord::Migration[6.0]
  def change
    create_table :smartphones do |t|
      t.string :brand
      t.string :model
      t.text :description
      t.string :condition
      t.string :color
      t.string :title
      t.decimal :price

      t.timestamps
    end
  end
end
