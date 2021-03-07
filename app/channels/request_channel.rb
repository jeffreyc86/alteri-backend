class RequestChannel < ApplicationCable::Channel

    def subscribed
      # stream_from "some_channel"
      stop_all_streams
      @request = Request.find(params[:id])
      stream_for @request
    end
  
    def receive(data)
  
    end
  
    def unsubscribed
      # Any cleanup needed when channel is unsubscribed
      stop_all_streams
    end
  
  end
  