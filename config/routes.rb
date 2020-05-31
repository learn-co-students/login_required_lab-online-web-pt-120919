Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sessions#new'
  get '/welcome', to: 'sessions#welcome'
  get '/destroy', to: 'sessions#destroy'
  resources :sessions, only: [:create]

  get '/secret/show', to: 'secrets#show'
end
