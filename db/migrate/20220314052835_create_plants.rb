class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :plant_type
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
