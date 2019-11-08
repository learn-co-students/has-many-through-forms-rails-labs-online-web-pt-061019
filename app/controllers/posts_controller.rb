require 'pry'

class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @users = []
    @post.comments.each do |comment|
      @users << comment.user 
    end
    @users = @users.uniq
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    if params["post"]["category_ids"].last != "" 
      post = Post.create(post_params)
    else
      post = Post.create(params.require(:post).permit(:title, :content, categories_attributes: [:name]))
    end
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
