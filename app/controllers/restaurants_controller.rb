class RestaurantsController < ApplicationController
    def index
        # fetch all the restaurants
        @restaurants = Restaurant.all
    end
end
