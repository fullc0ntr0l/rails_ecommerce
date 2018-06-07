class AddAttachmentImageToInspires < ActiveRecord::Migration
  def self.up
    change_table :inspires do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :inspires, :image
  end
end
