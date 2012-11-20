class Event < ActiveRecord::Base
  
  has_and_belongs_to_many :menuitems
  
  attr_accessible :address, :date, :id, :name, :other, :phone, :place, :time, :menuitem_ids
  validates_presence_of :date, 
  :message => "Please enter a date.. please"
  validates_presence_of :name, 
  :message => "Please give this poor event a name" 
  
end
