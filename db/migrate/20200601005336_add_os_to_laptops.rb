class AddOsToLaptops < ActiveRecord::Migration[6.0]
  def change
    add_column :laptops, :OS, :string
  end
end
