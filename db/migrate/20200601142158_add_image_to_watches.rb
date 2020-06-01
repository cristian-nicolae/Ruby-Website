class AddImageToWatches < ActiveRecord::Migration[6.0]
  def change
    add_column :watches, :image, :string
  end
end
