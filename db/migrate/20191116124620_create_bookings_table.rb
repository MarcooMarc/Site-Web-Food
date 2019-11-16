class CreateBookingsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :seat
      t.string :location
      t.timestamps
    end
  end
end
