class UsersController < ApplicationController

    
  def login
    user = User.find_by(id: params[:id])
    session[:user_id] = user.id
    render json: user
  end

end
