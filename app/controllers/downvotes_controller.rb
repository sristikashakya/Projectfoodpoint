class DownvotesController < ApplicationController
	before_action :authenticate_restaurant!
	def create
		@post = Post.find(params[:post_id])
		@post.downvote_from current_restaurant
		redirect_to posts_path
	end
end
