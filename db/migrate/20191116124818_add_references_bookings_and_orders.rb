class AddReferencesBookingsAndOrders < ActiveRecord::Migration[5.2]
  def change
  	add_reference :orders, :customer
  	add_reference :bookings, :trainee
  end
end
