Rails.application.routes.draw do
  resources :orders
  root 'store#index', as: 'store'
  resources :line_items
  resources :carts
  get "store/index"
  resources :games
  resources :games do
    get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
