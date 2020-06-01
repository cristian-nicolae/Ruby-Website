class AddUserIdToWatches < ActiveRecord::Migration[6.0]
  def change
    add_column :watches, :user_id, :integer
  end
end
