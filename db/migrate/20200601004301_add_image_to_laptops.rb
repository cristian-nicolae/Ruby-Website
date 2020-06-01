class AddImageToLaptops < ActiveRecord::Migration[6.0]
  def change
    add_column :laptops, :image, :string
  end
end
