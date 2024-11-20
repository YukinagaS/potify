Rails.application.routes.draw do
  devise_for :users

  root to: "toilets#index"

  resources :toilets, only: [:new, :create, :show, :destroy, :index ] do
    resources :bookings, only: [:create]
    resources :reviews, only: [:create]
  end

  resources :bookings, only: [:index, :destroy, :update]


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
