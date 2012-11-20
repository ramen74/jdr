class CreateMenuitems < ActiveRecord::Migration
  def change
    create_table :menuitems do |t|
      t.integer :id
      t.string :name
      t.string :description
      t.string :note

      t.timestamps
    end
  end
end
