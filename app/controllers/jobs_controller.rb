class JobsController < ApplicationController

  def new
    @job = Job.new
    @business = Business.find(params[:business_id])
  end

  def create
    @job = Job.new(user_id: params[:user_id], business_id: params[:business_id], state: "unverified", start_date: params[:job][:start_date], end_date: params[:job][:end_date], position: params[:job][:position])
    @job.save
    redirect_to users_path
  end
end


