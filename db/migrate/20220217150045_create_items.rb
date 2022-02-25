class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :season
      t.string :amenity
      t.string :toransportation

      t.timestamps
    end
  end
end
