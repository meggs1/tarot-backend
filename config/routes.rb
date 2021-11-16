Rails.application.routes.draw do
  default_url_options :host => 'https://tarot-card-reader-api.herokuapp.com/'
  resources :suits
  resources :cards
  resources :welcome
  resources :users, only: [:create, :show, :update]

  post '/login', to: 'auth#create'
  delete '/logout', to: 'auth#logout'
  get '/check_auth', to: 'auth#check_auth'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
