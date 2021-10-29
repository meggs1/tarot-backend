class ApplicationController < ActionController::API
  before_action :authorized

  def encode_token(payload)
    # should store secret in env variable
    JWT.encode(payload, ENV["JWT_SECRET_KEY"])
  end

  def auth_header
    # { Authorization: 'Bearer <token>' }
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[0]
      begin
        JWT.decode(token, ENV["JWT_SECRET_KEY"], true, algorithm: 'HS256')
      rescue JWT::DecodeError

        nil
      end
    end
  end

  def current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def check_admin
    unless (!!current_user && is_admin == true)
      render json: { message: 'Only admins can view this page.' }, status: :unauthorized
    end
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end
end