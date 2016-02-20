class SessionsController < ApplicationController
  respond_to :html, :json
  skip_before_filter  :verify_authenticity_token
  skip_before_filter :authenticate!
  include ActionController::HttpAuthentication::Token::ControllerMethods

  def create
    user = User.authenticate_user(user_params)
    if user

      data = {
        token: user.authentication_token,
        email: user.email
      }
      render json: data, status: 201
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :authentication_token)
  end
end
