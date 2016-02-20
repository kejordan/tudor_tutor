class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include ActionController::Serialization
  include ActionController::HttpAuthentication::Token::ControllerMethods
  protect_from_forgery with: :exception
  before_action :authenticate!


  private

  def authenticate!
    authenticate_token || render_unauthorized
  end

  def authenticate_token
    binding.pry
    authenticate_with_http_token do |token, options|
      user_email = options[:email].presence
      user = user_email && User.find_by_email(user_email)
      if user && Devise.secure_compare(user.authentication_token, token)
        sign_in user, store: false
      end
    end
  end

  def render_unauthorized
    binding.pry
    render json: {
      errors: ['Bad credentials'] }, status: 401
  end

end
