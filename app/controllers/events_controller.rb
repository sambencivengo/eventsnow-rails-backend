class EventsController < ApplicationController

  def index
    events = Event.all
    render json: events    
  end

  def create
    event = Event.create!(event_params)
    render json: event, status: :created
  end


  private

  def event_params
    params.permit(:event_name, :category, :description, :date, :location_id)
    
  end
end
