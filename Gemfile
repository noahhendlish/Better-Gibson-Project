source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'devise' #for user login/authentication
# User Authentication with Facebook
gem 'omniauth-facebook'
# Development ENV Variables
gem 'figaro' ,'~>1.1'
gem 'jquery-datatables-rails', '~> 3.4.0'

#gem 'strong_parameters', '~> 0.2.3'
#strong parameters for devise
#gem "cancan"
#for devise:
#gem "hpricot"
#gem "ruby_parser"
#https://github.com/activeadmin/activeadmin
#https://github.com/RailsApps/rails-devise-pundit
#https://github.com/mohitjain/social-login-in-rails
#Weak PWs: https://github.com/bitzesty/devise_zxcvbn
#for cancan: https://github.com/kristianmandrup/cantango
#https://github.com/plataformatec/devise#strong-parameters
gem 'bootstrap', '~> 4.1', '>= 4.1.3' #bootstrap for CSS/HTML (UX/UI)
#gem 'bootstrap', '~> 4.0.0.alpha6'
#gem 'sprockets-rails', '~> 3.2.1'
# Use jquery as the JavaScript library
gem 'popper_js'
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'will_paginate', '> 3.0'

gem 'pg_search'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  
   # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  
  gem 'foreman'
  #for gmail forgot password set up PW in .env
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  #for css/layout
  gem 'rails_layout'  
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  #gem 'annotate', '2.5.0'


end



group :production do
  #Heroku loves these two gems
  gem 'pg' 
  gem 'rails_12factor'
end

