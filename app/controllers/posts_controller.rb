class PostsController < ApplicationController
  def show
    @post = Post.find params[:id]
    render json: PostPresenter.new(@post)
  end
  def index
    @posts = Post.all
    render json: PostCollectionPresenter.new(@posts)
  end
  def create
    @post = Post.new params[:post]
    @post.user_id = 1 #TODO
    render json: (@post.save ? PostPresenter.new(@post) : validation_error(@post))
  end
end
