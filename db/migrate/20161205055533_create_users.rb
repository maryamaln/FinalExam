class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :andrew_id
      t.string :username
      t.string :password
      t.string :facilities

      t.timestamps null: false
    end
  end
end
