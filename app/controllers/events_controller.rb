class EventsController < ApplicationController

  def index
    events = Event.all - current_user.events

    render json: events
  end





  def create
    @current_event = Event.create!(event_params)
    Attendance.create(host: true, user_id: @current_user.id, event_id: @current_event.id)
    render json: @current_event, status: :created
  end

  def update
    event = Event.all.find(params[:id])
    event.update!(event_params)
    render json: event
  end

  def destroy
    event = Event.all.find(params[:id])
    event.attendances.delete
    event.delete
    events = Attendance.where(host: true, user_id: current_user.id)
    render json: events
  end


    


  private

  def event_params
    params.permit(:event_name, :category, :description, :date, :location_id, :city, :state, :zipcode, :address)
    
  end
end
