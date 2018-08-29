class PostsController < ApplicationController
	before_action :authenticate_restaurant!, only: [:new, :create]
	def create
		@post = current_restaurant.posts.create(post_params)
			if @post.valid?
			redirect_to root_path
			else
			render :new, status: :unprocessable_entity
			end
	end
	def new
  		@post = Post.new
	end

	private

	def post_params
		params.require(:post).permit(:restaurant_id, :photo, :description)
	end
	
end
