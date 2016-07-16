class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :restaurant
      t.string :loca_simple
      t.string :loca_map
      t.string :image_file

      t.timestamps null: false
    end
  end
end
