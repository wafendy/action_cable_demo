class SampleTwoChannel < ApplicationCable::Channel
  def subscribed
    puts "=== SampleTwoChannel subscribed"
    stream_from "sample_two_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def add_to_queue(data)
    ActionCable.server.broadcast(
      'add_queue_channel',
      button_id: data['button_id'],
      button_color: data['button_color']
    )
  end

  def process_queue(data)
    ActionCable.server.broadcast(
      'process_queue_channel',
      button_id: data['button_id'],
      button_color: data['button_color']
    )
  end
end
