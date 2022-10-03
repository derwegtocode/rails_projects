class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = current_user.post.build(post_params.merge(user_id: current_user.email(/^[^@]*/)))
    if @post.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @posts = Post.all.order(created_at: :asc)
  end

  private
  def post_params
    params.require(:post).permit(:body)
  end
end
