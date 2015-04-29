Rails.application.routes.draw do
  root 'pets#index'
  resources :pets, :owners, :ownerships, :toys, :shirts, except:[:show]
end
