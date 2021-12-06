Rails.application.routes.draw do
  root to: 'users#new'

  resources :users, only: [:new, :create, :edit, :update, :show]
end
