Rails.application.routes.draw do
  resources :jobs
  resources :profiles
  devise_for :users, :controllers => { registration: 'registration' }
  root to: "home#index"


end
