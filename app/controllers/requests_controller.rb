class RequestsController < ApplicationController

    def create
        request = Request.create(recipient_id: params[:recipient_id])

            params[:selectedItems].each do |item|
                if item[:preference]
                    RequestItem.create(
                        item_id: item[:id],
                        request_id: request.id,
                        quantity: item[:quantity],
                        preference: item[:preference]
                    )
                else
                    RequestItem.create(
                        item_id: item[:id],
                        request_id: request.id,
                        quantity: item[:quantity],
                    )
                end
            end
        
            render json: request
            ActionCable.server.broadcast 'pending_requests_channel', RequestSerializer.new(request)
    end

    def usersrequests
        requests = Request.where(recipient_id: params[:id])
        donated_requests = Request.where(donor_id: params[:id])

        @requests = requests.map { |req| RequestSerializer.new(req)}
        @donated_requests = donated_requests.map { |don_req| RequestSerializer.new(don_req) }

        render json: {requests: @requests, donated_requests: @donated_requests}
    end

    def pendingrequests
        @requests = Request.where(accepted: false)
        render json: @requests
    end

    def show
        @request = Request.find(params[:id])
        render json: @request
    end

    def acceptrequest
        @request = Request.find(params[:id])
        @request.update(accepted: true, donor_id: params[:donor_id])
        conversation = Conversation.create(request_id: @request.id)
        recipient_membership = Membership.create(conversation_id: conversation.id, user_id: @request.recipient_id, last_read: Time.now)
        donor_membership = Membership.create(conversation_id: conversation.id, user_id: @request.donor_id, last_read: Time.now)
        RequestChannel.broadcast_to @request, [RequestSerializer.new(@request), MembershipSerializer.new(recipient_membership), ConversationSerializer.new(conversation)]
        render json: {request: RequestSerializer.new(@request), conversation: ConversationSerializer.new(conversation), membership: MembershipSerializer.new(donor_membership) }
    end

    def fulfillrequest
        @request = Request.find(params[:id])
        @request.update(fulfilled: true)
        render json: @request
    end


end
