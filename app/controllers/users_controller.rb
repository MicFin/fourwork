class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show 
    if params[:id] != nil
      @user = User.find(params[:id])
    else
      @user = current_user
    end
  end


end
