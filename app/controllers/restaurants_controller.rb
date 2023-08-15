class RestaurantsController < ApplicationController
    def index
        # fetch all the restaurants
        @restaurants = Restaurant.all
    end

    def show
        # find the restaurant by id
        id = params[:id]
        @restaurant = Restaurant.find(id)
    end
end
