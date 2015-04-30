class PostsController < ApplicationController
  before_filter :authenticate, :except => [ :index, :show ]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @posts = Post.all.order('created_at DESC')
    respond_with(@posts)
  end

  def show
    respond_with(@post)
  end

  def new
    @post = Post.new
    respond_with(@post)
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.save
    respond_with(@post)
  end

  def update
    @post.update(post_params)
    respond_with(@post)
  end

  def destroy
    @post.destroy
    respond_with(@post)
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body)
    end


  private
    def authenticate
      authenticate_or_request_with_http_basic do |name, password|
        name == ENV["ADMIN_USER"] && password == ENV["ADMIN_PASS"]
    end

    def post_params
      params.require(:post).permit(:title, :body)
    end


  end
end