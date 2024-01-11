Rails.application.routes.draw do
  devise_for :players, controllers: { registrations: 'players/registrations' }

  resources :offers, only: [:index]
  resources :claims, only: [:create]

  root 'offers#index'
end
