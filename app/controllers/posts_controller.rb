class PostsController < ApplicationController
before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
    require "date"
    @date_today = Date.today
    @posts_today = Post.where(due_date: Date.today)
  end

  def show
  end

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.create(post_params)

    if @post.save
      # flash[:success] = "タスクが投稿されました"
      redirect_to root_path
    else
      # flash[:danger] = "タスクが投稿されません"
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :due_date, :memo).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
