App.button = App.cable.subscriptions.create "ButtonChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    switch data.state
      when 'ready'
        $("##{data.button_id}").removeClass('is-loading')
      when 'pending'
        $("##{data.button_id}").addClass('is-loading')
