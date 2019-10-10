class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def after_sign_up_path_for(resource)
  'pages/type' # Or :prefix_to_your_route
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
  end


end
