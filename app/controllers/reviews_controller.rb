class ReviewsController < ApplicationController
    before_action :set_restaurant,  only: [:new, :create]
    before_action :set_review,      only: [:edit, :update, :destroy]
    helper ReviewsHelper

    def new
      @review = Review.new
    end
  
    def create
      @review = Review.new(review_params)
      @review.restaurant = @restaurant
  
      if @review.save
        redirect_to restaurant_path(@restaurant)
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @review.update(review_params)
        redirect_to restaurant_path(@review.restaurant)
      else
        render :edit
      end
    end
  
    def destroy
      @review.destroy
      flash[:success] = "Review has been destroyed successfully!"
      redirect_to restaurant_path(@review.restaurant)
    end
  
  
    private
  
    def set_review
      @review = Review.find(params[:id])
    end
  
    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end
  
    def review_params
      params.require(:review).permit(:content, :rating)
    end
  end