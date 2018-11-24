class ButtonChannel < ApplicationCable::Channel
  def subscribed
    puts "=== ButtonChannel subscribed"
    stream_from "button_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
