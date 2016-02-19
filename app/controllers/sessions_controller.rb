class SessionsController < ApplicationController
  respond_to :html, :json

  def create
    user = User.authenticate(user_params)
    super do |user|
      if request.format.json?
      data = {
        token: user.authentication_token,
        email: user.email
      }
      render json: data, status: 201 and return
    end
  end

  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
