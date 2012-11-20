class EventsMenuitems < ActiveRecord::Base
  
  attr_accessible :event_id, :menuitem_id
  
  #validates_uniqueness_of :event_id, :scope => [:event_id, :menuitem_id]

end
