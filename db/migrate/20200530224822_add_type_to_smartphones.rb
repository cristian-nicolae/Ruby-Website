class AddTypeToSmartphones < ActiveRecord::Migration[6.0]
  def change
    add_column :smartphones, :type, :string
  end
end
