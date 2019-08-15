Rails.application.routes.draw do
 devise_for :users
 devise_scope :user do
  get 'logout', to: 'devise/sessions#destroy', as: :logout
end
  root to: 'dragons#index'
  resources :dragons do
    resources :reviews, only: [:new, :create]
    resources :reservations, only: [:new, :create, :index]
  end
  get "destroy_reservations/:id", to: 'reservations#destroy', as: :destroy_reservation
  resources :reservations, only: [:show, :edit, :update]
  get 'dashboard', to: 'reservations#dashboard', as: :dashboard
  resources :accounts
  resources :reviews, only: [:edit, :update, :destroy]
end

