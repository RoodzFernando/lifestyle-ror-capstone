Rails.application.routes.draw do
  resources :articles
  root 'home_page#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  get    '/vote',   to: 'votes#create'
end
