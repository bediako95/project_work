Rails.application.routes.draw do
  devise_for :clients
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :gardeners
  devise_for :users_authentications
  resources :customers
  get 'post/sample'
  get 'post/about'
  root 'post#index'

  # match ':controller/:action/:id', via: :get
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
