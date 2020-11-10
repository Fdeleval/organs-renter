class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  devise_parameter_sanitizer.permit(:sign_up, keys: [:smoker, :drinker, :donor, :description, :address])
end
