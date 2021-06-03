Rails.application.routes.draw do
  get 'users/edit'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/dashboard', to: 'pages#dashboard'


  resources :user_values, only: [:new, :create]
  resources :values, only: [:index]

  resources :events, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:destroy]
  patch "/users" ,to: "users#update"

end
