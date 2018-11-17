class DummyJob
  include SuckerPunch::Job

  def perform
    ActionCable.server.broadcast 'sample_one_channel', message: 'Dummy Job - Started'
    sleep(rand(3..7))
    ActionCable.server.broadcast 'sample_one_channel', message: 'Dummy Job - Finished'
  end
end
