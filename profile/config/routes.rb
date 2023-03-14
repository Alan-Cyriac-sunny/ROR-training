Rails.application.routes.draw do
  resources :profils
  devise_for :views
  devise_for :users
  root to: 'users#index'
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
end
