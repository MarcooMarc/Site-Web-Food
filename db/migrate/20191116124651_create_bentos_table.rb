class CreateBentosTable < ActiveRecord::Migration[5.2]
  def change
     create_table :bentos do |t|
      t.string :title
      t.string :description
      t.string :date
      t.string :photo 
      t.timestamps
    end
  end
end
