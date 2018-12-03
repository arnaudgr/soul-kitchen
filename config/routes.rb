Rails.application.routes.draw do

	root "recipe#index"
	resources :recipe
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

