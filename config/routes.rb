Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts
    # post 'posts', to: 'posts#index'
  resources :users, only: [:edit, :update]
end
