class ChatLogChannel < ApplicationCable::Channel
  def subscribed
    puts "=== ChatLogChannel subscribed"
    stream_from "chat_log_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_chat_log(data)
    ActionCable.server.broadcast('chat_log_channel', data)
  end
end
