Rails.application.routes.draw do

  resources :orders
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'

  resources :products do
    get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'auth/developer', :as => 'developer_auth'
  match 'auth/:provider/callback' => 'session#create', :via => [:get, :post]

  get 'session/destroy', :as => 'logout'

end
