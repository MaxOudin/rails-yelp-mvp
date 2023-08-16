class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.new(review_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @review = Review.new
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def review_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
