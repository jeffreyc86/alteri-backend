class RequestItemsController < ApplicationController


    def create
        RequestItem.create(request_item_params)
        render json: @request_item
    end

    private

    def request_item_params
        params.permit(:item_id, :request_id, :quantity, :preference)
    end

    
end
