Rails.application.routes.draw do
  devise_for :accounts
  resources :connections

  root to: "home#index"
end
