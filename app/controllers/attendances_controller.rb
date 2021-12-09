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
    attendances = Attendance.where(user_id: @current_user.id)
    render json: attendances
  end

  def other_attendances
    attendances = Attendance.all.select{|a| a.user_id != @current_user.id}
    #filter any event Id that appears more than once
    no_dupes = attendances.each.uniq{|a| a.event.id}  
    render json: no_dupes
  end  


  


  private

  def attendance_params
    params.permit(:user_id, :event_id, :host)
  end
end
