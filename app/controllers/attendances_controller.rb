class AttendancesController < ApplicationController
# skip_before_action :authorize


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

  def attending
    attendances = Attendance.where(host: false, user_id: @current_user.id)
    render json: attendances
  end

    


  


  private

  def attendance_params
    params.permit(:user_id, :event_id, :host)
  end
end
