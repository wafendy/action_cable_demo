class SampleTwoJob
  include SuckerPunch::Job

  workers 1

  def perform(payload)
    ActionCable.server.broadcast 'process_queue_channel', payload
  end
end
