Rails.application.routes.draw do

  get 'documents/index'

  get 'documents/new'

  get 'documents/create'

  get 'documents/destroy'

  get 'users/new'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
  resources :documents, only: [:index, :new, :create, :destroy]

  root 'sessions#new'
end
