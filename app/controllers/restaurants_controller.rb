class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [ :show, :chef ]

    def index
        @restaurants = Restaurant.all
    end

    def top
        @restaurants = Restaurant.where(rating: 5)
    end

    def show
        @reviews = @restaurant.reviews
    end

    def chef; end

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

    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end
end
