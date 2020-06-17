# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  #before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  #GET /resource/sign_up
  #def new
     #super
     #@new_user = User.new

    #build_resource
    #yield resource if block_given?
    #respond_with resource
  #end

  # POST /resource
  #def create
   #  super
  #end

  # GET /resource/edit
  #def edit
     #super
  #end

  # PUT /resource
  #def update
     #super
  #end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    #devise_parameter_sanitizer.sanitize(:sign_up)
    devise_parameter_sanitizer.sanitize(:sign_up)
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :last_name, :major, :grad_year, :credits_taken, :password, :password_confirmation])
  end
  
 def sign_up_params
    params.require(:user).permit(:email, :first_name, :last_name, :major, :grad_year, :credits_taken, :password, :password_confirmation)
 end
 
  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.sanitize(:account_update)
    #devise_parameter_sanitizer.sanitize(:account_update)
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :first_name, :last_name, :student_ID, :major, :grad_year, :credits_taken, :password, :password_confirmation])
  end

  #def account_update_params
    #params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  #end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
