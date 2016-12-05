class CreateMailItems < ActiveRecord::Migration
  def change
    create_table :mail_items do |t|
      t.date :date_arrived_pittsburgh
      t.date :date_arrived_qatar
      t.date :date_delivered
      t.string :sender
      t.string :description
      t.string :comment
      t.integer :shipping_weight
      t.string :discard
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
