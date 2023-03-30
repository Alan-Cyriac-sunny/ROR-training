Rails.application.routes.draw do
	# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
	namespace :api do
		namespace :v1 do
			resources :users, param: :_username
      resources :user_movies do
        post '/comment', to: "user_movies#comment"
        post '/like', to: "user_movies#like"
      end
			post '/auth/login', to: 'authentication#login'
			delete '/auth/logout', to: 'authentication#logout'
			resources :movies do
				post '/comment', to: "movies#comment"
			end
      resources :actors
      resources :crews
      resources :roles
      resources :crew_types
      resources :movie_cast
      resources :movie_crews
			# get '/*a', to: 'application#not_found'
		end
	end
	# Defines the root path route ("/")
	# root "articles#index"
end
