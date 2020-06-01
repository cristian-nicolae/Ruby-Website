class AddTypeToInstruments < ActiveRecord::Migration[6.0]
  def change
    add_column :instruments, :type, :string
  end
end
