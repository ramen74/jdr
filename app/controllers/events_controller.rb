class EventsController < ApplicationController
  
  #set for cancan: 
  load_and_authorize_resource

  def index
    @events = Event.find(:all, :order => 'date DESC' )

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  def show
    session[:return_to] = request.referer
    #putting this in an array for the partial which expects an array and not an event object..
    @events = Array.new
    begin
      @events[0] = Event.find(params[:id])
    #TODO... find out why this rescue isnt working!
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path, notice: 'That event is either non-existant or has been removed..'
    end

  end
  
  def new
    #return to stores for referer back in the update method
    session[:return_to] = request.referer
    
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    end
  end

  def edit
    #return to stores for referer back in the update method
    session[:return_to] = request.referer
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      begin
        redirect_to session.delete(:return_to),notice: 'Event was successfully created.'
       ActionController::RedirectBackError
      rescue 
        redirect_to root_path, notice: 'Event was successfully updated.'
      end
    else 
      redirect_to root_path, notice: 'Event failed to save, please try again.'
    end   
    
  end

  def update
    params[:event][:menuitem_ids] ||= []
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        #format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.html {
          begin
            redirect_to session.delete(:return_to)
          #
           ActionController::RedirectBackError
          rescue 
            redirect_to root_path, notice: 'Event was successfully updated.'
          end
        }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    
    @event = Event.find(params[:id])
    @event.destroy

      begin
        redirect_to session.delete(:return_to)
      #
       ActionController::RedirectBackError
      rescue 
        redirect_to root_path, notice: 'Event was successfully destroyed.'
      end
  end
  

end
