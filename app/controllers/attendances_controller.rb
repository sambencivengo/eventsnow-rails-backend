class AttendancesController < ApplicationController
# skip_before_action :authorize, only: [:attending, :host]


  def create
    attendance = Attendance.create!(attendance_params)
    render json: attendance, status: :created
  end

  def index
    attendances = Attendance.all
    render json: attendances
  end


  def host
    attendances = Attendance.where(host: true, user_id: @current_user.id)
    render json: attendances
  end

  def attending_not_host
    attendances = Attendance.where(host: false, user_id: @current_user.id)
    render json: attendances
  end

  def attending
    # lolwhat = current_user.attendances
    attendances = Attendance.where(user_id: @current_user.id)
    render json: attendances
  end

 
  def other_attendances
    # getting rid of user
    attendances = Attendance.all.select{|a| a.user_id != @current_user.id}.each.uniq{|a| a.event.id}  
    # no_dupes = attendances
    render json: attendances
  end  


  


  private
  

  def attendance_params
    params.permit(:user_id, :event_id, :host)
  end
end
