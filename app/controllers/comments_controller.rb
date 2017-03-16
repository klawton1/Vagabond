class CommentsController < ApplicationController
  def show
    @comment = Comment.find_by_id(params[:id])
  end
  def edit
    @comment = Comment.find_by_id(params[:id])
  end

  def update
    @comment = Comment.find_by_id(params[:id])
    @comment.update(comment_params)
    if !@comment.save
      flash[:error] = "Bad Update to comments"
      redirect_to root_path
    end
    redirect_to comment_path(@comment)

  end
  def new
    if !current_user
      redirect_to login_path
    end
    @city_id = params[:city_id]
    @comment = Comment.new()
  end
  def create
    @city = City.find_by_id(params[:city_id])
    @comment = Comment.new(comment_params)
    current_user.comments << @comment
    @city.comments << @comment
    redirect_to comment_path(@comment)
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :text, :city_id)
  end
end
