class PostsController < ApplicationController
  def show
    @post = Post.find params[:id]
    render json: PostPresenter.new(@post)
  end
  def index
    @posts = Post.all
    render json: PostCollectionPresenter.new(@posts)
  end
end
