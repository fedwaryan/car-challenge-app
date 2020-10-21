Rails.application.routes.draw do
  resources :specifications
  resources :cars
	root 'home#index'
  devise_for :users
  get '/follow/:user_id' ,to: 'follows#follow' , as: :follow
  post '/specifications', to: 'specifications#index' , as: :check_specs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
