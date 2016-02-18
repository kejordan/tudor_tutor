class Api::V1::ContentsController < ApplicationController

  def index
    render json: Content.all
  end

  def show
    render json: content
  end

  def create
    render json: Content.create(content_params)
  end

  def update
    render json: content.update(content_params)
  end

  def destroy
    render json: content.destroy
  end

  private

  def content
    Content.find(params[:id])
  end

  def content_params
    params.require(:content).permit(:user_id)
  end

end