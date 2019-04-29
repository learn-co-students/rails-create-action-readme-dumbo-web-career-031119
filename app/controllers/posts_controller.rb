class PostsController < ApplicationController
  before_action :new_post, only: [:new, :create]
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end



  def create
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    redirect_to post_path(@post)
  end

  private

  def new_post
    @post = Post.new
  end
end
