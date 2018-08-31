class RestaurantsController < ApplicationController
	def index
		if params[:search].present?s
	      @restaurants = Restaurant.perform_search(params[:search])
	    else
	      @restaurants = Restaurant.all
	    end

	end
	def show
  		@restaurant = Restaurant.find(params[:id])
	end
end
