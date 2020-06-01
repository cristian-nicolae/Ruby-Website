class AddUserIdToLaptops < ActiveRecord::Migration[6.0]
  def change
    add_column :laptops, :user_id, :integer
  end
end
