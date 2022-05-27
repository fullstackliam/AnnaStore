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
  get "profile/edit"
  get "checkout_receipt_path" => 'checkout#receipt'

  get 'search', to: 'products#search', as: 'search'
  get "new_billing_address" => "profile#new"
  get "edit_billing_address" => "profile#edit"

  get "checkout_payment_path" => "checkout#payment"

  resources :cart
  resources :street_address
  post "cart/add"
  post "cart/update"
  get "cart/remove"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "products#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
