class User::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    #permit(:sign_up, keys: [:username, :email])
    #@params.permit(:sign_up, keys: [:email, :first_name, :last_name, :student_id, :major, :grad_year, :credits_taken, :password, :password_confirmation])

  end
  
  def sign_up
    default_params.permit(:email, :first_name, :last_name, :major, :grad_year, :credits_taken, :password, :password_confirmation)
  end

end

