class CreateShippings < ActiveRecord::Migration
  def change
    create_table :shippings do |t|
      t.string :title
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end
