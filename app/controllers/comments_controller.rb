class CommentsController < ApplicationController
 before_filter :load_commentable

  def index
    @comments = @commentable.comments
  end

  def new
    @comment = Comment.new
    @job_id = params[:job_id]
    @user = User.find(params[:user_id])
  end

  def create
    @comment = @commentable.comments.new(content: params[:comment]["content"], commentable_id: params[:comment]["job_id"].to_i)
    binding.pry
    @user = User.find(params[:comment]["user_id"])
    if @comment.save
      redirect_to @commentable, notice: "Comment created."
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @job = Job.find(@comment.commentable_id)
    @comment.destroy
    redirect_to @job
    # redirect_to user_path(id: current_user.id) 
  end

  private

  def load_commentable
    resource, id = request.path.split('/')[1,2]
    @commentable = resource.singularize.classify.constantize.find(id)
  end

end
