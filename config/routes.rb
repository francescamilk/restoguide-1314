Rails.application.routes.draw do
  # Create (show form)
  # GET localhost:3000/restaurants/new
  get 'restaurants/new', to: 'restaurants#new'
  
  # Create (posting)
  # POST localhost:3000/restaurants
  post 'restaurants', to: 'restaurants#create'
  
  # Update (show form)
  # GET localhost:3000/restaurants/1/edit
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  
  # Update (updating)
  # PATCH localhost:3000/restaurants/1
  patch 'restaurants/:id', to: 'restaurants#update'
  
  # Read (all)
  # GET localhost:3000/restaurants
  get 'restaurants', to: 'restaurants#index'
  
  # Read (one)
  # GET localhost:3000/restaurants/1
  # GET localhost:3000/restaurants/4
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # Delete
  # DELETE localhost:3000/restaurants/1
  delete 'restaurants/:id', to: 'restaurants#destroy'
end
