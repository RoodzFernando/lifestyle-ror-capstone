Rails.application.routes.draw do
  root 'home_page#index'
  resources :users
end
