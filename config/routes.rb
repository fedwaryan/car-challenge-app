Rails.application.routes.draw do
  resources :cars
	root 'home#index'
  devise_for :users
  get '/follow/:user_id' ,to: 'follows#follow' , as: :follow

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
