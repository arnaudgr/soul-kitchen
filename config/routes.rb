Rails.application.routes.draw do


  devise_for :users
	root "recipe#index"
	get '/recipe/add_ing/:quantity/:name', to: 'recipe#add_ingredient'
	get '/recipe/add_step/:description', to: 'recipe#add_step'


	patch '/recipe', to: 'recipe#realcreate'
	resources :recipe
	resources :user
	resources :subscribers
	resources :messages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end