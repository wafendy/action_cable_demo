class QueueProcessorJob
  include SuckerPunch::Job

  workers 1

  def perform
    ActionCable.server.broadcast 'process_queue_channel', {}
  end
end
