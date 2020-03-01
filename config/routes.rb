Rails.application.routes.draw do
  resources :reviews
  resources :order_items
  resources :items
  resources :categories
  resources :orders
  resources :cart_items
  resources :carts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

##custom routes
post '/charges', to: 'charges#create'
post '/login', to: "users#login"
get '/persist', to: "users#persist"
get '/profile', to: "users#profile"
delete '/cartitem/delete/:id', to: 'cart_items#destroy'

end
