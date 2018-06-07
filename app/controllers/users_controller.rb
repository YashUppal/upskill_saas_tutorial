class UsersController < ApplicationController
  
  
  def index 
    @users = User.includes(:profile)
  end
  
  before_action :authenticate_user!
  # GET to /users/:id
  def show 
    @user = User.find(params[:id])
  end
  
end