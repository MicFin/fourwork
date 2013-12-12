class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    if current_user 
      @user = User.find(current_user)
    end
  end

end
