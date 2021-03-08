class MembershipsController < ApplicationController

    def update
        membership = Membership.find(params[:id])
        membership.update(last_read: params[:last_read])
        render json: membership
    end

end
