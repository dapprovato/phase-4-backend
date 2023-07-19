class ApplicationController < ActionController::API

  # before_action :authorize
  # skip_before_action :authorize, only: [:index]

  include ActionController::Cookies

  # def authorize
  #   return render json: {error: "Not authorized"}, status: :unauthorized unless session.include? :user_id
  # end
  
end
