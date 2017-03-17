class FeedbacksController < ApplicationController
  def new
    if !current_user
      redirect_to login_path
    end
    @comment = Comment.find_by_id(params[:id])
    @feedback = Feedback.new()
  end

  def create
    comment = Comment.find_by_id(params[:id])
    @feedback = Feedback.new(feedback_params)
    comment.feedbacks << @feedback
    current_user.feedbacks << @feedback
    redirect_to comment_path(comment)
  end

  def edit
    @feedback = Feedback.find_by_id(params[:id])
    if !current_user || current_user != @feedback.user
      redirect_to login_path
    end
  end

  def update
    feedback = Feedback.find_by_id(params[:id])
    feedback.update(feedback_params)
    redirect_to comment_path(feedback.comment)
  end

  def destroy
    feedback = Feedback.find_by_id(params[:id])
    comment = feedback.comment
    feedback.delete
    redirect_to comment_path(comment)
  end

  private

  def feedback_params
    params.require(:feedback).permit(:text)    
  end

end
