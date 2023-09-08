Rails.application.routes.draw do
  devise_for :users
  root to: 'budgets#index'
  resources :budgets, only: [:index, :new, :create, :edit, :update, :destroy] do
    resources :records do
      resource :favorites, only: [:create, :destroy]
    end
  end
  resources :users, only: :show do
    resources :favorites, only: [:index]
  end
end
