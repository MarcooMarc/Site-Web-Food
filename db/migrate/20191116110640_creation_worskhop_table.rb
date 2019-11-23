class CreationWorskhopTable < ActiveRecord::Migration[5.2]
  def change
    create_table :workshops do |t|
      t.string :title
      t.text :description
      t.string :schedule
      t.string :date
      t.integer :seat
      t.integer :price
      t.string :photo
      t.timestamps
    end
  end
end
