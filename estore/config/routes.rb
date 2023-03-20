Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :user
  resources :product
  resources :sale
  # Defines the root path route ("/")
  root "product#index"
end
