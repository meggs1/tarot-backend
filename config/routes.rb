Rails.application.routes.draw do
  default_url_options :host => 'http://localhost:3000'
  resources :suits
  resources :cards
  resources :users, only: [:create, :show, :update]

  post '/login', to: 'auth#create'
  delete '/logout', to: 'auth#logout'
  get '/check_auth', to: 'auth#check_auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
