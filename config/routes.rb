Rails.application.routes.draw do
  resources :songs
  resources :users, only: [:show]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'sessions#new'
end
