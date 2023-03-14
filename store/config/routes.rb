Rails.application.routes.draw do
  devise_for :users
  scope '/admin' do
    resources :users
  end
  root to: 'items#index'
  resources :items
  resources :roles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
