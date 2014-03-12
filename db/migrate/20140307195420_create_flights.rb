class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.text :trip_name
      t.text :airline
      t.integer :flight_number
      t.text :depart_location
      t.text :arrive_location
      t.datetime :depart_time
      t.datetime :arrive_time
      t.timestamps
    end
  end
end
