Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/register', to: 'register#new'
  post '/register', to: 'register#create'

  namespace :admin do
    resources :users
  end

  resources :schedules
  root to: 'schedules#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
