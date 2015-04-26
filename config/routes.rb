Rails.application.routes.draw do
  root 'pets#index'
  resources :pets, :owners
  resources :ownerships, only:[:index, :new, :create]
end
