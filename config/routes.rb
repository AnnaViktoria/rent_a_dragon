Rails.application.routes.draw do
 devise_for :users
  root to: 'dragons#index'
  resources :dragons do
    resources :reviews, only: [:new, :create]
    resources :reservations, only: [:new, :create, :index]
  end
  resources :reservations, only: [:show, :destroy, :edit, :update]
  get 'dashboard', to: 'reservations#dashboard', as: :dashboard
  resources :accounts
  resources :reviews, only: [:edit, :update, :destroy]
end

