Rails.application.routes.draw do
  devise_for :users
  root to: 'budgets#index'
  resources :budgets, only: [:index, :new, :create]
end
