class RestaurantsController < ApplicationController
	def show
  		@restaurant = RSestaurant.find(params[:id])
	end
end
