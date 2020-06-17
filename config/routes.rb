Rails.application.routes.draw do
  #devise_for :users
  #get 'auth/facebook/callback', to: 'sessions#create'
  #get 'auth/failure', to: redirect('/')
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        #, registrations: 'user/registrations'
        omniauth_callbacks: 'users/omniauth_callbacks' 
  }

  #if you want user logged in vs non-logged in to have different root page.
  #sets up the log in page as root path for an unauthenticated user.
  #authenticated :user do
      #root 'welcome#index', as: 'authenticated_root'
    #end
  #devise_scope :user do
    #root 'devise/sessions#new'
  #end
  

  #devise_for :users, controllers: { 
    #registrations: 'users/registrations' }

  #You can also override 
  #after_sign_in_path_for and after_sign_out_path_
  #for to customize your redirect hooks.

  #get 'welcome/index'
  root 'welcome#index'
  get 'welcome/about' => 'welcome#about'
  get 'welcome/privacy' => 'welcome#privacy'
  #FIX: https://www.railstutorial.org/book/filling_in_the_layout/*
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  

  resources :courses
  get 'courses' => 'courses#index'
  get 'courses/new' => 'courses#new'
  post 'courses' => 'courses#create'

  resources :students
  get 'students' => 'students#index'
  get 'students/new' => 'students#new'
  post 'students' => 'students#create'
  

  resources :majors do
    resources :courses
  end
  get 'majors' => 'majors#index'
  get 'majors/new' => 'majors#new'
  get 'majors/:id' => 'majors#show', as: 'show_courses_in_this_major'
  post 'majors' => 'majors#create'
  
  resources :searches  
  
  get '/search' => 'pages#search', :as => 'search_page'

  # You can have the root of your site routed with "root"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

end
