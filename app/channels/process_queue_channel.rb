class ProcessQueueChannel < ApplicationCable::Channel
  def subscribed
    stream_from "process_queue_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
