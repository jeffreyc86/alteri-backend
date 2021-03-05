class RequestsController < ApplicationController

    def create
        @request = Request.create(recipient_id: params[:recipient_id])

            params[:selectedItems].each do |item|
                if item[:preference]
                    RequestItem.create(
                        item_id: item[:id],
                        request_id: @request.id,
                        quantity: item[:quantity],
                        preference: item[:preference]
                    )
                else
                    RequestItem.create(
                        item_id: item[:id],
                        request_id: @request.id,
                        quantity: item[:quantity],
                    )
                end
            end

        render json: @request
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

    def acceptRequest
        @request = Request.find(params[:id])
        @request.update(accepted: true, donor_id: [:donor_id])
        if @request.valid?
            render json: @request
        else
            render json: @request.errors
        end
    end


end
