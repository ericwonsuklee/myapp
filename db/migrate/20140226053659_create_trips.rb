class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.text :trip_name
      t.text :location
      t.date :start_date
      t.date :end_date
      t.text :description
      t.timestamps
    end
  end
end
