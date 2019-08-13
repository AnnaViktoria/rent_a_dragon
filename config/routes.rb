Rails.application.routes.draw do
  devise_for :users
  root to: 'dragons#index'
  resources :dragons do
    resources :reservations, only: [:new, :create, :index]
  end
  resources :reservations, only: [:show, :destroy, :edit, :update]
  get 'dashboard', to: 'reservations#dashboard', as: :dashboard
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
