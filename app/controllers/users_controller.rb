class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :move_to_root
  
  def show
    @user = User.find(params[:id]) 
  end
  
  private
  def move_to_root
    begin
      @user = User.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path
      return
    end
  
    if current_user.id != @user.id
      redirect_to root_path
    end
  end

end
