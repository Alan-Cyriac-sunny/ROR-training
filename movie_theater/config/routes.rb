Rails.application.routes.draw do
	# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
	namespace :api do
		namespace :v1 do
			resources :users, param: :_username
			post '/auth/login', to: 'authentication#login'
			delete '/auth/logout', to: 'authentication#logout'
			resources :movies do
				post '/new_commen', to: "movies#new_comment"
			end
			resources :directors
			get '/*a', to: 'application#not_found'
		end
	end
	# Defines the root path route ("/")
	# root "articles#index"
end
