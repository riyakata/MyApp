class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :Name
      t.time :droptime
      t.text :dropArea

      t.timestamps
    end
  end
end
