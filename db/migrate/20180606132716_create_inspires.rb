class CreateInspires < ActiveRecord::Migration
  def change
    create_table :inspires do |t|
      t.string :image_url
      t.string :title
      t.text :content
      t.string :link

      t.timestamps
    end
  end
end
