class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
    	t.string :photo1_home_page
    	t.string :photo2_home_page
    	t.string :photo3_home_page
    	t.string :photo_commande_index
    	t.string :photo_commande_new
      t.string :photo_parcours
      t.string :photo_contact
    	t.text :commander
      t.text :parcours
      t.string :photo_parcours
      t.timestamps
    end
  end
end
