class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :image_url
      t.string :title
      t.string :link
      t.decimal :price

      t.timestamps
    end
  end
end
