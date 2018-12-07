Rails.application.routes.draw do


	root "recipe#index"
	# put '/recipe/new/:id', to: 'recipe#add_ingredient'
	get '/recipe/add_ing/:quantity/:name', to: 'recipe#add_ingredient'
	patch '/recipe', to: 'recipe#realcreate'
	resources :recipe
	resources :user

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

