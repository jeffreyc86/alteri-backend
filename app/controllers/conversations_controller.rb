class ConversationsController < ApplicationController

    def getuserconvos
        user = User.find(params[:id])
        userConvos = user.conversations.map { |convo| ConversationSerializer.new(convo) }
        render json: {convos: userConvos}
    end

end
