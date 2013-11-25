class AddAttachmentProductphotoToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :productphoto
    end
  end

  def self.down
    drop_attached_file :products, :productphoto
  end
end
