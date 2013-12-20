class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
    @categories = Business.categories
    @by_employees = Business.by_employee_count.reverse
  end

  def show
    @business = Business.find(params[:id])
    @positions = Business.find(params[:id]).positions_list
    # if current_user != nil
    #   @job = current_user.jobs.select do |job|       binding.pry 
    #     if job.business.id == params[:id]
    #       job
    #     end
    #   end
    # end
  end


end
