class AddImageToFlat < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :image_src, :string
  end
end
