Rails.application.routes.draw do


  root 'page#index'

  get "login", to: "sessions#login"
  get "logout", to: "sessions#logout"

  resources :jobs
  resources :sessions
  resources :users
  get "success" => "page#success"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
