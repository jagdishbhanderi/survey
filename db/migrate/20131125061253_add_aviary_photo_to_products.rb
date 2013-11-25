class AddAviaryPhotoToProducts < ActiveRecord::Migration
  def change
    add_column :products, :aviary_photo, :string
  end
end
