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
    if @comment.text.length < 1|| @comment.text.length > 200
      flash[:Error] = "Comment needs to be between 1 and 200 characters."
      redirect_to new_comment_path(params[:city_id])
    else
      redirect_to comment_path(@comment)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    city_id = @comment.city.id
    @comment.destroy
    redirect_to city_path(city_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :text, :city_id)
  end
end
