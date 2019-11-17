class CreateOrdersTable < ActiveRecord::Migration[5.2]
  def change
     create_table :orders do |t|
      t.integer :quantities
      t.string :day
      t.boolean :delivery
      t.references :customer
      t.datetime :created_at, null: false

    end
  end
end
