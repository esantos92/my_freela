Rails.application.routes.draw do
  get 'pages/home'

  devise_for :users, :controllers => { registration: 'registration' }
  root to: 'pages#home'
  resources :jobs
  resources :profiles
end
