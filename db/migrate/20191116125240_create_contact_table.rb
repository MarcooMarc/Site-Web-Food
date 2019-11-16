class CreateContactTable < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
       	t.string :name
    	t.string :surmane
    	t.string :email
    	t.text :message
    	t.timestamps
    end
  end
end
