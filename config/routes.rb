Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :boats do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index, :update]
  get '/dashboard', to: 'dashboard#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
