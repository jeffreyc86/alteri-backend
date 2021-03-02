class RequestItemsController < ApplicationController


    def create
        if params[:preference]
            @request_item = RequestItem.create(item_id: params[:item_id], request_id: params[:request_id], quantity: params[:quantity], preference: params[:preference])
        else
            @request_item = RequestItem.create(item_id: params[:item_id], request_id: params[:request_id], quantity: params[:quantity])
        end
        render json: @request_item
    end

    
end
