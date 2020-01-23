class ApplicationController < ActionController::Base
  include SetTray
  
  before_action :authenticate_user!
  before_action :verify_role!
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  def after_sign_in_path_for(resource)
    if current_user.admin?
      admin_root_path
    else
      root_path
    end
  end
  
  def verify_role!
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
end
