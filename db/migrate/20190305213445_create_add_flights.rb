class CreateAddFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :add_flights do |t|

      t.timestamps
    end
  end
end
