class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :id
      t.string :name
      t.date :date
      t.string :time
      t.string :place
      t.string :address
      t.string :phone
      t.string :other

      t.timestamps
    end
  end
end
