Rails.application.routes.draw do
  root to: 'users#index'
  resources :users, only: [:index, :create, :destroy]
  resources :groups, only: [:index,:show, :create, :destroy]
  resources :group_users
end
