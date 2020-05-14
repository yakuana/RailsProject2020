Rails.application.routes.draw do
  get 'carts/show'
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :carts
  resources :snacks
  root 'welcome#index'
end
