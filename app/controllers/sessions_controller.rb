class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:create, :destroy]
  
    def create
      user = User.find_by(username: params[:username])
      if user&.authenticate(params[:password])
        session[:user_id] = user.id
        # byebug
        render json: user, status: :created
      else
        render json: { error: "Invalid username or password" }, status: :unauthorized
      end
    end
  
    def destroy
      session.delete :user_id
      render json: "Log out successful"
    end
    
  
  end