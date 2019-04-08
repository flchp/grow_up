Rails.application.routes.draw do
  devise_for :user, controllers: {
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions'
    }
  root 'welcome#index'
  resources :oridposts
  namespace :account do
    resources :oridposts do
      member do
        post :publish
        post :hide
      end
    end
  end
  namespace :admin do
    resources :oridposts do
      member do
        post :publish
        post :hide
        post :display
        post :conceal
      end
    end
  end
end
