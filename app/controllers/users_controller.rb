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

    ### LEFT OFF HERE 12AM
    ## try redirecting to comment show page instead of user page for simplicity
    
    # if @user.jobs.each do |job| 
    #   if job.comments != nil
    #   @commentable = Job.find(job.id)
    #   @comments = @commentable.comments
    #   @comment = Comment.new
    # end

    respond_to do |format|
      format.html
      format.json { render json: @job }
    end

  end


end
