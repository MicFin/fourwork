class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
    @categories = Business.categories
    @by_employees = Business.by_employee_count.reverse
  end

  def show
      @business = Business.find(params[:id])
      @positions = Business.find(params[:id]).positions_list
      @job = current_user.jobs.select{|job| job.business.id ==  params[:id]}
  end


end
