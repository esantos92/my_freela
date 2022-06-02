Rails.application.routes.draw do
  devise_for :users, :controllers => { registration: 'registration' }
  root to: "home#index"
  
  resources :jobs
  resources :profiles

end
