class CommentsController < ApplicationController
	before_action :is_owner?, only: :destroy
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params.merge(restaurant_id: current_restaurant.id))
		if @comment.valid?
			redirect_to posts_path
		else
			flash[:alert] = "Invalid attributes."
			redirect_to posts_path
		end
	end
	def destroy
		 @comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to posts_path
	end
	private 
	def is_owner?
		@comment = Comment.find(params[:id])
		if @comment.restaurant != current_restaurant
			redirect_to posts_path
		end
	end
	def comment_params
		params.require(:comment).permit(:text, :post_id)
	end
end
