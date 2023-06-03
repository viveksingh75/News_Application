Rails.application.routes.draw do
  get 'editor/index'
  get 'home/index'
  devise_for :logins
  get 'admin/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"
  resources :admin,:home,:editor



 
    
  
end
