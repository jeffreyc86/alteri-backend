class RequestsController < ApplicationController


    def create
        @request = Request.create(recipient_id: params[:recipient_id])
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

end
