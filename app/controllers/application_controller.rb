#require 'app/sanitizers/user_parameter_sanitizer'

class ApplicationController < ActionController::Base
  def about
    render "/about"
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #from devise
  #Devise will create some helpers to use inside your controllers and views. 
  #To set up a controller with user authentication, just add this before_action (assuming your devise model is 'User'):
  #before_action :devise_parameter_sanitizer, if: :devise_controller?
  #before_action :configure_permitted_parameters, if: :user_controller?
  #before_filter :devise_parameter_sanitizer, if: :devise_controller?
  #before_filter :configure_permitted_parameters, if: :devise_controller?

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :last_name, :major, :grad_year, :credits_taken, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :first_name, :last_name, :major, :grad_year, :credits_taken, :password, :password_confirmation])
    #devise_parameter_sanitizer.permit(:sign_in) do |user_params|
    #user_params.permit(:username, :email)
  end
  
  #added from: https://www.adrianprieto.com/how-to-setup-devise-and-omniauth-for-your-rails-application/
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end
  
  #def devise_parameter_sanitizer
    #if resource_class == User
      #User::ParameterSanitizer.new(User, :user, params)
      #keys: [:attribute, :username, :email, :first_name, :last_name, :major, :grad_year, :credits_taken, :password, :password_confirmation])
  
    #else
      #super # Use the default one
    #end
  #end

   #before_action :authenticate_user!
  
  #For Rails 5, note that protect_from_forgery is no longer prepended to the before_action chain, so if you have set authenticate_user before protect_from_forgery, your request will result in "Can't verify CSRF token authenticity." To resolve this, either change the order in which you call them, or use protect_from_forgery prepend: true.
    #https://github.com/plataformatec/devise#starting-with-rails
  
end
