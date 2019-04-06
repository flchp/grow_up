Rails.application.routes.draw do
  devise_for :users
  root 'oridposts#index'
  resources :oridposts
end
