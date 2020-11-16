Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :games do
    resources :rentals, only: [:new, :create] do
      resources :reviews, only: [:new, :create]
    end
  end

  resources :reviews, only: [:destroy]

end
