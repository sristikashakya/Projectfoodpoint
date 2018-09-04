class ChatController < ApplicationController
	def index
    session[:conversations] ||= []
 
    @restaurants = Restaurant.all.where.not(id: current_restaurant)
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
  end
end
