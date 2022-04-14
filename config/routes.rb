Rails.application.routes.draw do
  get 'products/new'
  get 'products/view'
  get 'products/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "products#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
