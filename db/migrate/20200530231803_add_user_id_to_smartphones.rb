class AddUserIdToSmartphones < ActiveRecord::Migration[6.0]
  def change
    add_column :smartphones, :user_id, :integer
  end
end
