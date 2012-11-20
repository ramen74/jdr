class Menuitem < ActiveRecord::Base

  has_and_belongs_to_many :events

  attr_accessible :description, :id, :name, :note, :event_ids
  
  #TODO: Cannot delete a menuitem if its in an event.. the event must be gone first!!
  
  #This is no longer needed since checkbox interface but keeping just in case
  def add_dish_to_event(event)
    #allows this dish to get added to an event... ignores if its already there...
    self.events << event unless self.events.include?(event)
  end
  
  #This is no longer needed since checkbox interface but keeping just in case
  def remove_dish_from_event(event)
    self.events.destroy(event)
    self.save
  end
  
end
