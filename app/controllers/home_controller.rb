class HomeController < ApplicationController
  
  def index
    #include EventsHelper
    @future_events = Event.find(:all, :order => 'date',:conditions => ["date >= Curdate()"], :limit => 1)
    @past_events = Event.find(:all, :order => 'date',:conditions => ["date < Curdate()"], :limit => 1)
    @next_event = @future_events[0]
  end 
  
  #def dish_to_event()
  #  logger.debug "::::" +params[:event].inspect
  #  @event = Event.find(params[:event])
  #  @dish =  Menuitem.find(params[:menuitem])
  #  #logger.debug "ADDING" + @event.inspect + "to" + @dish.inspect
  #  @dish.add_dish_to_event(@event)
  #  render(:layout => false)
  #end
  
  #def purge_dish_from_event()
  #  @event = Event.find(params[:event])
  #  @dish =  Menuitem.find(params[:menuitem])
  #  #logger.debug "ADDING" + @event.inspect + "to" + @dish.inspect
  #  @dish.remove_dish_from_event(@event)
  #  render(:layout => false)
  #end
  
  def jen
  end
  
  def darren  
  end

  def login
  end

end
