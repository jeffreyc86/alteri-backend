class MessagesController < ApplicationController

    def getallmessages
        user = User.find(params[:id])
        convos = user.memberships.pluck(:conversation_id)
        messages = Message.where(conversation_id: convos)
        allmessages = messages.map{ |message| MessageSerializer.new(message)}

        render json: {messages: allmessages}
    end

    def create
        @message = Message.create(conversation_id: params[:conversation_id], user_id: params[:user_id], content: params[:content])
        
        conversation = @message.conversation

        MessageChannel.broadcast_to conversation, MessageSerializer.new(@message)
        render json: @message
    end
    

end
