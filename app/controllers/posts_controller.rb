class PostsController < ApplicationController
  def index
    @posts = Post.order('created_at DESC')
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "The post has been successfully created."
    else
      render action: "new"
    end
  end

  def new
    @post = Post.new
  end


  private
  def post_params
    p "attempting to read params " + params.to_s
    params.require(:post).permit(:title, :body)
  end

end
