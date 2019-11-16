class CreateTraineesTable < ActiveRecord::Migration[5.2]
  def change
      create_table :trainees do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :phonenumber
      t.timestamps

    end
  end
end
