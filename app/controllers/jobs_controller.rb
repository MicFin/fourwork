class JobsController < ApplicationController

  def new
    @job = Job.new
    @business = Business.find(params[:business_id])
  end


  def create
    @job = Job.new(user_id: params[:user_id], business_id: params[:business_id], state: "unverified", start_date: params[:job][:start_date], end_date: params[:job][:end_date], position: params[:job][:position])
    @job.save
    redirect_to user_path(id: current_user.id)
  end

  def edit
    @job = Job.find(params[:id].to_i) 
    @business = Business.find(@job.business_id)
  end

  def update
    @job = Job.find(params["id"].to_i)
    if @job.update(start_date: params["job"]["start_date"], end_date: params["job"]["end_date"], position: params["job"]["position"])
      redirect_to user_path(id: current_user.id)
    else
      render action: 'edit'
    end
  end  

  def destroy
    binding.pry
    @job = Job.find(params["id"].to_i)
    @job.destroy
    redirect_to user_path(id: current_user.id) 
  end


end

