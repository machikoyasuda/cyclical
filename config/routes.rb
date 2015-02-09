Rails.application.routes.draw do
  resources :days

  devise_for :accounts
  resources :connections

  root to: "home#index"
end
