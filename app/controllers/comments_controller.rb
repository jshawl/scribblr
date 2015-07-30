class CommentsController < ApplicationController
  # index
  def index
    @comments = Comment.all
  end

  # new
  def new
    @post = Post.find(params[:post_id])
    @post = Comment.new
  end

  # create
  def create
    @post = Post.find(params[:post_id])
    @comments = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  # show
  def show
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
    @comment = Comment.new
    # @comments = Comment.all
  end

  # edit
  def edit
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
  end

  # update
  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_comment_path
  end

  # destroy
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    @post = Post.find(params[:post_id])
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :content)
  end
end
