Rails.application.routes.draw do
  devise_for :users
  root to: 'games#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :games do
    resources :rentals, only: [:new, :create] do
    end
  end
  resources :reviews, only: [:index]
  resources :rentals, only: [:index] do
    resources :reviews, only: [:new, :create]
  end
end
