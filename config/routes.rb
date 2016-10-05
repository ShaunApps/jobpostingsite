Rails.application.routes.draw do


  root 'page#index'

  resources :jobs

  resources :users


  resources :sessions
  get "login", to: "sessions#login"
  get "logout", to: "sessions#logout"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
