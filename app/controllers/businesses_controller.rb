class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
  end

  def show
      @business = Business.find(params[:id])
      @positions = Business.find(params[:id]).positions_list
  end

  # def add_from_search

  #   # need to add longitude and latitude
  #   # need to change parent categories to an array and remove the final .first
  #   @new_business = Business.find_or_create_by(name: params["business"]["name"], address: params["business"]["location"]["address"], city: params["business"]["location"]["city"], state: params["business"]["location"]["state"], country: params["business"]["location"]["country"], category: params["business"]["categories"].first["name"], parent_category: params["business"]["categories"].first["parents"].first, phone: params["business"]["contact"]["phone"])
  #       binding.pry
  #   @new_business.save
  # end

  # def create_job(business)
  #   Job.new(user_id: current_user.id, business_id: business.id, state: "unverified")
  # end

end
