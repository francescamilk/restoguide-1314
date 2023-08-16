Rails.application.routes.draw do
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create'
  
  # Read (all)
  # GET localhost:3000/restaurants
  get 'restaurants', to: 'restaurants#index'

  # Read (one)
  # GET localhost:3000/restaurants/1
  # GET localhost:3000/restaurants/4
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

end
