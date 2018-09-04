class MessagesController < ApplicationController
	def create
    @conversation = Conversation.includes(:recipient).find(params[:conversation_id])
    @message = @conversation.messages.create(message_params)
 
    respond_to do |format|
      format.js
    end
  end
 
  private
 
  def message_params
    params.require(:message).permit(:restaurant_id, :body)
  end
end
