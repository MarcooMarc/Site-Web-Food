class CreateFrontPageHomeTable < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :photo
      t.text :parcours
      t.text :commander
      t.timestamps
    end
  end
end
