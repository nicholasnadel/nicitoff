Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:update, :show, :index]
  resources :todos, only: [:new, :create, :show, :index, :destroy]

  resources :items
  get 'welcome/index'
  root to: 'welcome#index'
end
