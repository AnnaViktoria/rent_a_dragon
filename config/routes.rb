Rails.application.routes.draw do
  devise_for :users
  root to: 'dragons#index'
  resources :dragons do
    resources :reservations
    end
end
