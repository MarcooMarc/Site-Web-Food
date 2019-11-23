class CreateBookingsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :seat
      t.string :workshop
      t.integer :price
      t.references :trainee
      t.datetime :created_at, null: false    
    end
  end
end
