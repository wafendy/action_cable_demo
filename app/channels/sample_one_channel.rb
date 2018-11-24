class SampleOneChannel < ApplicationCable::Channel
  def subscribed
    puts "=== SampleOneChannel subscribed"
    stream_from "sample_one_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    SampleOneJob.perform_async(data['button_id'])
  end
end
