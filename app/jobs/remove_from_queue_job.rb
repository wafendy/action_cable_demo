class RemoveFromQueueJob
  include SuckerPunch::Job

  workers 1

  def perform(payload)
    ActionCable.server.broadcast 'remove_queue_channel', payload
  end
end
