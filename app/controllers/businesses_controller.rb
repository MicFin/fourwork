class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
  end

  def show
      @business = Business.find(params[:id])
      @positions = Business.find(params[:id]).positions_list
  end

end
