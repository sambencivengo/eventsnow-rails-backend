class EventsController < ApplicationController

  def index
    events = Event.all
    render json: events    
  end

  def create
    @current_event = Event.create!(event_params)
    Attendance.create(host: true, user_id: @current_user.id, event_id: @current_event.id)
    render json: @current_event, status: :created
  end


  private

  def event_params
    params.permit(:event_name, :category, :description, :date, :location_id)
    
  end
end
