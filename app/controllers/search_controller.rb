class SearchController < ApplicationController
def index
   if params[:query].present?
   	# binding.pry
     @restaurants = Restaurant.search(params[:query])
 else
     @restaurants = Restaurant.all
   end
 end
end