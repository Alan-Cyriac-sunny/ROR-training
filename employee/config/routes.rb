Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :employee
  # post '/employee/new', to: 'employee#create' 
  # post '/employee/:id/edit' to: 'employee#update'
  # Defines the root path route ("/")
  # root "employee#index"
end
