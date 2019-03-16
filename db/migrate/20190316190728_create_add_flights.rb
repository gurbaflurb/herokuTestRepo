class CreateAddFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :add_flights do |t|
      t.string :departing
      t.string :arriving
      t.datetime :departureTime
      t.datetime :arrivalTime

      t.timestamps
    end
  end
end
