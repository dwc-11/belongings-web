class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :season
      t.boolean :amenity, null: false
      t.boolean :toransportation, null: false

      t.timestamps
    end
  end
end
