class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params.merge(restaurant_id: current_restaurant.id))
		if @comment.valid?
			redirect_to root_path
		else
			flash[:alert] = "Invalid attributes."
			redirect_to root_path
		end
	end

	private 

	def comment_params
		params.require(:comment).permit(:text, :post_id)
	end
end
