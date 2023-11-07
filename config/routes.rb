Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :products
  #root 'products#index'
  root 'top#main'
  get 'top/main'

  resources :cart_items, only: [:new, :create, :destroy]
  resources :carts, only: [:show]
  # Defines the root path route ("/")
  # root "articles#index"
end
