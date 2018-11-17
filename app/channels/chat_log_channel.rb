class ChatLogChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_log_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
