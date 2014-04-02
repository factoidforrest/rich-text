class PostsController < ApplicationController
  def index
    @posts = Post.order('created_at DESC')
  end

  def create
    post = params[:post]
    @post = Post.new(post)
    if @post.save
      redirect_to posts_path, notice: "The post has been successfully created."
    else
      render action: "new"
    end
  end

  def new
    @post = Post.new
  end



end
