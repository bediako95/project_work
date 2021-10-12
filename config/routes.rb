Rails.application.routes.draw do
  resources :customers
  get 'post/sample'
  root 'post#index'

  # match ':controller/:action/:id', via: :get
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
