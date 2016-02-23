class Api::V1::PostsController < ApplicationController

  def index
    render json: Post.all
  end

  def show
    render json: post
  end

  def create
    render json: Post.create(post_params)
  end

  def update
    render json: post.update(post_params)
  end

  def destroy
    render json: post.destroy
  end

  private

  def post
    Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :post_content, :program_id)
  end

end