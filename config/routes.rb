Rails.application.routes.draw do
  
  devise_for :logins
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"
  resources :home,:editor,:admin



 
    
  
end
