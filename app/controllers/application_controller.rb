class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if:  :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :full_name])
  end

  def is_admin?
    
    redirect_to root_path, alert: "Vous ne disposez pas de l'autorisation nécessaire pour exécuter cette action." unless current_user.admin? 
  end

end
