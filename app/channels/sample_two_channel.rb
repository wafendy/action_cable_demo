class SampleTwoChannel < ApplicationCable::Channel
  def subscribed
    stream_from "sample_two_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
