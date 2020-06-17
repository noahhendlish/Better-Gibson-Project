# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  #before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  #def new
     #@user = User.new
     #super
  #end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out


  #protected
  def destroy
    super
  	#session[:user_id] = nil
  	#redirect_to root_path
  end
  

  #def create
    #@user = User.new(params.require(:user).permit(:email, :password, :password_confirmation))
    #user = User.new(params[:email])
    #super
    #if request.env['omniauth.auth']
      #@user = User.find_or_create_from_auth_hash(env["omniauth.auth"])
      #user = User.find_or_create_from_auth_hash(env["omniauth.auth"])
      #session[:user_id] = @user.id    
      #user = User.create_with_omniauth(request.env["omniauth.auth"])
      #session[:user_id] = user.id    
      #redirect_to user_path(user.id)
    #else
      
      #user = User.find_by_email(params[:email])
      #user && user.authenticate(params[:password])
      #session[:user.id] = user.id
      #redirect_to user_path(user.id)#root_path #user_path(@user.id)
 
      #if user.save
      #redirect_to @user #OR::
       # session[:user_id] = user.id
      # redirect_to '/'
      #else
      #render :new #OR::
      #redirect_to '/signup'
      #end
    #end
 #end
  
  # If you have extra params to permit, append them to the sanitizer.
  #def configure_sign_in_params
     #devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
     #devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :first_name, :last_name, :major, :grad_year, :credits_taken, :password, :password_confirmation])
  #end
end
