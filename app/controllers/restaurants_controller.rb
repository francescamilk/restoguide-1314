class RestaurantsController < ApplicationController
    def index
        # fetch all the restaurants
        @restaurants = Restaurant.all
    end

    def top
        @restaurants = Restaurant.where(rating: 5)
    end

    def show
        # find the restaurant by id
        @restaurant = Restaurant.find(params[:id])
        @reviews    = @restaurant.reviews
    end

    def chef
        @restaurant = Restaurant.find(params[:id])
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
