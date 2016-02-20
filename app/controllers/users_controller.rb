class Api::V1::UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    render json: user
  end

  def create
    render json: User.create(user_params)
  end

  def update
    render json: user.update(user_params)
  end

  def destroy
    render json: user.destroy
  end

  # def me

  #   render json: current_user
  # end

  private

  def user
    User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
