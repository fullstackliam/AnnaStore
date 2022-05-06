Rails.application.routes.draw do
  devise_for :users
  get 'cart/add'
  get 'cart/remove'
  get 'checkout/cart'
  get 'checkout/payment'
  get 'categories/index'
  get 'categories/show'
  get 'products/new'
  get 'products/view'
  get 'products/index'
  get 'search', to: 'products#search', as: 'search'
  resources :cart

  post "cart/add"
  get "cart/remove"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "products#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
