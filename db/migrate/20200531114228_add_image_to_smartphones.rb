class AddImageToSmartphones < ActiveRecord::Migration[6.0]
  def change
    add_column :smartphones, :image, :string
  end
end
