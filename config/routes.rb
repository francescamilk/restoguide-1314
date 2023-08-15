Rails.application.routes.draw do
  # Read (all)
  # GET localhost:3000/restaurants

  get 'restaurants', to: 'restaurants#index'
end
