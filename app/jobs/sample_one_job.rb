class SampleOneJob
  include SuckerPunch::Job

  def perform(button_id)
    # if button_id == 'sample_one_button_2'
    #   ActionCable.server.broadcast 'button_channel', button_id: button_id, state: 'pending'
    # end

    ActionCable.server.broadcast 'sample_one_channel', message: 'Dummy Job - Started'
    
    sleep(rand(1..4))

    ActionCable.server.broadcast 'sample_one_channel', message: 'Dummy Job - Finished'

    # if button_id == 'sample_one_button_2'
    #   ActionCable.server.broadcast 'button_channel', button_id: button_id, state: 'ready'
    # end
  end
end
