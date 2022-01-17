class AttendancesController < ApplicationController
skip_before_action :authorize, only: [:attending, :host, :create]


# RSVP
  def create
    attendance = Attendance.create(attendance_params)
    if attendance.valid?
      render json: attendance, status: :created
    else
      render json: { error: attendance.errors }, status: :unprocessable_entity
    end
  end
# THIS FILTERS
  # def parties
  #   attendances = Attendance.all - @current_user.attendances
  #   render json: attendances
  # end






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
    attendances = Attendance.all - @current_user.attendances
    # attendances = Attendance.all.select{|a| a.user_id != @current_user.id}  
    no_dupes = attendances.uniq
    render json: no_dupes
  end  

  def destroy
    attendance = Attendance.find(params[:id])
    attendance.delete
  end

  # def destroy
  #   session.delete :user_id
  #   render json: "Log out successful"
  # end


  private
  

  def attendance_params
    params.permit(:user_id, :event_id, :host)
  end
end
