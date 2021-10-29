Rails.application.routes.draw do
  default_url_options :host => 'http://localhost:3000'
  resources :user_cards
  resources :suits
  resources :cards
  resources :arcanas
  resources :users, only: [:create, :profile]

  post '/login', to: 'auth#create'
  # get '/profile', to: 'users#profile'
  get '/check_auth', to: 'auth#check_auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
