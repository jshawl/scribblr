class PostsController < ApplicationController
  skip_before_action :authenticate


  #index
  def index
    if session[:user] == nil
      @posts = Post.all
    else
      @posts = User.find(session[:user]["id"]).posts
    end
  end

  #new
  def new
    @post = Post.new
  end

  #create
  def create
    @user = User.find(session[:user]["id"])
    @post = @user.posts.create!(post_params)
    # if you want to use the current user as the author:
    # @user.posts.create!(post_params.merge(author: @user))
      redirect_to post_path(@post)
  end

  #show
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where(post_id:params[:id]) #trying to get comments to show in the post show view
    # or @post.comments
  end

  # edit
def edit
  @post = Post.find(params[:id])
end

  #update
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path
  end

  #destroy
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :author, :content)
  end

end
