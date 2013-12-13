class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @client = Foursquare2::Client.new(:client_id => ENV["CLIENT_ID"], :client_secret => ENV["CLIENT_SECRET"])
  end


end
