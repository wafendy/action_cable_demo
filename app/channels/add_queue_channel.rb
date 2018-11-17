class AddQueueChannel < ApplicationCable::Channel
  def subscribed
    stream_from "add_queue_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
