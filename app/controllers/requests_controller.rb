class RequestsController < ApplicationController


    def create
        @request = Request.create(recipient_id: params[:recipient_id])
        render json: @request
    end

end
