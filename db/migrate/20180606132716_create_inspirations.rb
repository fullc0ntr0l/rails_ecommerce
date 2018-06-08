class CreateInspirations < ActiveRecord::Migration
  def change
    create_table :inspirations do |t|
      t.string :image_url
      t.string :title
      t.text :content
      t.string :link

      t.timestamps
    end
  end
end
