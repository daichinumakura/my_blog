class PostsController < ApplicationController
  before_action :set_post, only: [ :show, :edit, :update, :destroy]

  def index
      # @posts = Post.all.order(created_at: :desc)でも可
      @posts = Post.page(params[:page]).order(created_at: :desc).per(4)
      @new_posts = Post.order(created_at: :desc).limit(5)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.attributes = {
      user_id: current_user.id
    }
    if @post.save
      redirect_to user_post_path(cullent_user,@post), notice: "ブログを登録しました。"
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to user_post_path(cullent_user,@post), notice: "ブログを更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: "ブログを削除しました。"
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :category_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end