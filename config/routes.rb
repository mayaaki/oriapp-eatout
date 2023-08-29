Rails.application.routes.draw do
  root to: 'budgets#index'
  resources :budgets, only: :index
end
