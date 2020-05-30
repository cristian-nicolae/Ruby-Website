class AddUserIdToInstruments < ActiveRecord::Migration[6.0]
  def change
    add_column :instruments, :user_id, :integer
  end
end
