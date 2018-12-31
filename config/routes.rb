Rails.application.routes.draw do
  root to: 'users#toppage'
  get 'elementary-school/:id', to: 'users#elementary', as: 'elementary'
  get 'junior-high-school/:id', to: 'users#junior', as: 'junior'
  get 'high-school/:id', to: 'users#high', as: 'high'
  get 'college/:id', to: 'users#college', as: 'college'
  get 'circle/:id', to: 'users#circle', as: 'circle'
  
  resources :users, only: [:edit, :update]
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
