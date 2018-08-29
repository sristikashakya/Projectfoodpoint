class UpvotesController < ApplicationController
	before_action :authenticate_restaurant!
	def create
		@post = Post.find(params[:post_id])
		@post.liked_by current_restaurant
		redirect_to posts_path
	end
end
