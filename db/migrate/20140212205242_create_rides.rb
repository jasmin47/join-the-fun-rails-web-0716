class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.timestamps null: false
      t.integer :passenger_id
      t.integer :taxi_id
    end
    add_index :rides, :passenger_id
    add_index :rides, :taxi_id
  end
end
