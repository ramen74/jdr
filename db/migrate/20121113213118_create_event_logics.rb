class CreateEventLogics < ActiveRecord::Migration
  def change
    create_table :event_logics do |t|

      t.timestamps
    end
  end
end
