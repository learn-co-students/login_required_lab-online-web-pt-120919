Rails.application.routes.draw do
  get '/create', to: "sessions#hello"
  root 'sessions#new'

  get '/welcome', to: 'sessions#welcome'
  get '/new', to: "sessions#new"
  get '/secret', to: "secrets#secret"
  post '/login', to: "sessions#create"
  delete '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
