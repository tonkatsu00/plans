class PostsController < ApplicationController
  def index
    @posts = Post.all
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
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :due_date, :memo).merge(user_id: current_user.id)
  end
end
