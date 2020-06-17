class User < ApplicationRecord
  has_many :majors
  #has_many :courses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers=> [:facebook]

         #, :omniauthable, omniauth_providers: [:facebook]

  validates :email,
    presence: true,
    on: :create,
    allow_nil: false
    
  #ADD?
  #devise :database_authenticatable, :authentication_keys => [:email]
  #validates :email, uniqueness: true
    #https://guides.railsgirls.com/devise
    #devise :database_authenticatable, :registerable, :confirmable, :recoverable, stretches: 12
    #Besides :stretches, you can define :pepper, :encryptor, :confirm_within,  :remember_for, :timeout_in, :unlock_in among other options. 
    #For more details, see the initializer file that was created when you invoked the "devise:install" generator described above. 
    #This file is usually located at /config/initializers/devise.rb.
        # If you don't want confirmation to be sent on create, neither a code
      # to be generated, call skip_confirmation!
  def skip_confirmation!
      self.confirmed_at = Time.now.utc
  end
  #def is_admin
    #if current_user.try(:admin?)
     # return true
    #else 
    #  return false
    #end
  #end
  #https://launchschool.com/blog/how-to-use-devise-in-rails-for-authentication
  #https://github.com/plataformatec/devise/issues/4332
  #https://github.com/plataformatec/devise/wiki/How-To:-Add-an-Admin-Role
  #def self.create_with_omniauth(auth)
  #user = find_or_create_by(uid: auth[‘uid’], provider:  auth[‘provider’])
  #user.email = “#{auth[‘uid’]}@#{auth[‘provider’]}.com”
  #user.password = auth[‘uid’]
  #user.name = auth[‘info’][‘name’]
  
  def self.from_omniauth(auth)
    #where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      #user.provider = auth.provider
			user.uid = auth.uid
			user.first_name = auth.info.first_name
			user.last_name = auth.info.last_name
	   # If you are using confirmable and the provider(s) you use validate emails, 
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
      
      #user.provider = auth.provider
      #user.uid = auth.uid
      ##GET NAME INFO
      #user.first_name = auth.info.first_name
      #user.name = auth.info.name
      #user.last_name = auth.info.last_name
        if User.exists?(user)
          user
          #return user
        else
          user.save!
          user
        end
    end      
  end
end
