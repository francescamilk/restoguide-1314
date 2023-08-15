class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [ :show, :edit, :update, :destroy ]

    def index
        @restaurants = Restaurant.all
    end

    def show; end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.create(restaurant_params)
        redirect_to restaurant_path(@restaurant)
    end

    def edit; end

    def update
        # id = params[:id]
        # @restaurant = Restaurant.find(id)
        @restaurant.update(restaurant_params)
        redirect_to restaurant_path(@restaurant)
    end

    def destroy
        # id = params[:id]
        # @restaurant = Restaurant.find(id)
        @restaurant.destroy
        redirect_to restaurants_path, status: :see_other
    end

    private

    def restaurant_params
        params.require(:restaurant).permit(:name, :address)
    end
    
    def set_restaurant
        id = params[:id]
        @restaurant = Restaurant.find(id)
    end
end
