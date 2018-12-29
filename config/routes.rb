Rails.application.routes.draw do
  root to: 'users#toppage'
  get 'timeline/:school_name', to: 'users#timeline', as: 'timeline'

  resources :users, only: [:edit, :update]
  
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end