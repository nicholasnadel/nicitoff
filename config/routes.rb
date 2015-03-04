Rails.application.routes.draw do
  get 'user/show'

  get 'users_controller/show'

  devise_for :users
  resources :users, only: [:update, :show, :index]
  resources :items
  get 'welcome/index'
  root to: 'welcome#index'
end
