Rails.application.routes.draw do
  resources :parishes

  root to: 'visitors#index'
  devise_for :users, :controllers => { registrations: 'devise/registrations' }
  resources :users
end
