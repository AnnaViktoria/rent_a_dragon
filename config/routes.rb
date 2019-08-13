Rails.application.routes.draw do
  devise_for :users
  root to: 'dragons#index'
  resources :dragons do
    resources :reservations
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:edit, :update, :destroy]
end

