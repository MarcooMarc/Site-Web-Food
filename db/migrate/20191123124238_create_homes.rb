class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
    	t.string :photo1
    	t.string :photo2
    	t.string :photo3
    	t.text :commander
      t.timestamps
    end
  end
end
