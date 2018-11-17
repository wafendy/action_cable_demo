class SampleOneChannel < ApplicationCable::Channel
  def subscribed
    stream_from "sample_one_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
