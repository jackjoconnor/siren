Rails.application.routes.draw do
  get 'boats/index'
  get 'boats/new'
  get 'boats/create'
  get 'boats/edit'
  get 'boats/update'
  get 'boats/delete'
  get 'boats/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
