class PostsController < ApplicationController
  # skip_before_action :authenticate


  #index
  def index
    @posts = User.find(session[:user]["id"])
    @posts = Post.all.order(:id).reverse
  end

  #new
  def new
    @post = Post.new
  end

  #create
  def create
    @user = User.find(session[:user]["id"])
    @post = @user.posts.create!(post_params)
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      redirect_to new_post_path
    end
  end

  #show
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where(post_id:params[:id]) #trying to get comments to show in the post show view
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
