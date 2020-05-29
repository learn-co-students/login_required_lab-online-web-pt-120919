Rails.application.routes.draw do
  
  get 'secrets/new'

  root 'application#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  post '/secret' => 'secrets#show'
end
