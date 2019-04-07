Rails.application.routes.draw do
  devise_for :user, controllers: {
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions'
    }
  root 'oridposts#index'
  resources :oridposts
end
