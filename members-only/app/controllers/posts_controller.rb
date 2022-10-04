class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show]

  def new
    @post = Post.new
  end

  def create
    @post = current_user.post.build(post_params.merge(user_id: current_user))
    if @post.save
      redirect_to root_path, notice: "Secret shared"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @posts = Post.where(:user_id => current_user.id)
  end

  private
  def post_params
    params.require(:post).permit(:body)
  end

end
