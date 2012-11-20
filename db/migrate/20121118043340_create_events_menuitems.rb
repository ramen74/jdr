class CreateEventsMenuitems < ActiveRecord::Migration
  def change
    create_table :events_menuitems do |t|
      t.integer :event_id
      t.integer :menuitem_id

      t.timestamps
    end
  end
end
