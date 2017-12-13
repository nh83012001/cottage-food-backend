class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :authorized

def issue_token(payload)
  JWT.encode(payload, "supersecretcode")
end


def current_user
  # binding.pry
  authenticate_or_request_with_http_token do |jwt_token, options|
    # binding.pry

    begin
      # binding.pry
      decoded_token = JWT.decode(jwt_token, "supersecretcode")
    rescue JWT::DecodeError
      return nil
    end

    # binding.pry
    if decoded_token[0]["user_id"]
      @current_user ||= User.find(decoded_token[0]["user_id"])
    else
    end
  end
end

def logged_in?
  # binding.pry
  !!current_user
end

def authorized
  # binding.pry
  render json: {message: "Not welcome" }, status: 401 unless logged_in?
end


end
