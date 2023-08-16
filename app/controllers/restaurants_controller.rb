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

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        redirect_to restaurant_path if @restaurant.save
    end

    private

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :rating)
    end
end
