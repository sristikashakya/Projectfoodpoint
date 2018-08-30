class DownvotesController < ApplicationController
	before_action :authenticate_restaurant!
	def create
		@post = Post.find(params[:post_id])
		@post.downvote_from current_restaurant
		
		respond_to do |format|
			format.html {redirect_to posts_path}
			format.js {}
		end
	end
end
