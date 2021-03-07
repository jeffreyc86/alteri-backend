class PendingRequestsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stop_all_streams
    stream_from 'pending_requests_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    stop_all_streams
  end
end
