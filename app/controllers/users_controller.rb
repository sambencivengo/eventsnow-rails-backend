class UsersController < ApplicationController

  def index
    byebug
    render json: {"testing": "123"}
  end
end
