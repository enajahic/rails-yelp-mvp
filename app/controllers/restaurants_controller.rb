class RestaurantsController < ActionController::Base
    def index
        @restaurants = Restaurants.all
    end
    def show
    end
    def new
        @restaurant = Restaurant.new
    end
end