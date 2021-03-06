class ApplicationController < ActionController::API
  include ActionController::Cookies
  
  rescue_from ActiveRecord::RecordInvalid, with: :render_unproc_entity_resp

  before_action :authorize

  private

  def authorize
    @current_user = User.find_by(id: session[:user_id])

    render json: { errors: ["Not authorized"] }, status: :unauthorized unless @current_user
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def render_unproc_entity_resp(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

end
