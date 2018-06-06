class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :image_url
      t.string :title
      t.string :promo_text
      t.string :button_text
      t.text :link

      t.timestamps
    end
  end
end
