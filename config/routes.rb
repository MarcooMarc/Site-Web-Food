Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/GodMode', as: 'rails_admin'

  root to: 'homes#index'
  get 'workshops', to: 'bookings#index'
  get 'monworkshops', to: 'bookings#new'

  get 'lesbentos', to: 'bentos#index', as: 'bentos'
  get 'monparcours', to: 'homes#index2', as: 'parcours'
  get 'contacts', to: 'contacts#new', as: 'contact'

  get 'commander', to: 'orders#index'
  get 'macommande', to: 'orders#new', as: 'macommande'

  resources :orders, only: [:create, :destroy]
  resources :bookings, only: :create
  resources :contacts, only: :create   
end