Rails.application.routes.draw do


	root "recipe#index"
	resources :recipe
	resources :user

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

