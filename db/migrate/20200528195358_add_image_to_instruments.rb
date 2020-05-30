class AddImageToInstruments < ActiveRecord::Migration[6.0]
  def change
    add_column :instruments, :image, :string
  end
end
