class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :latitude
      t.integer :longitude
      t.integer :mail_item_id

      t.timestamps null: false
    end
  end
end
