class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    binding.pry
  end


end
