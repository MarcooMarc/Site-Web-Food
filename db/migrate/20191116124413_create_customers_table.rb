class CreateCustomersTable < ActiveRecord::Migration[5.2]
  def change
      create_table :customers do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :phonenumber
      t.string :adress
      t.string :city
      t.string :postalcode
    end
  end
end
