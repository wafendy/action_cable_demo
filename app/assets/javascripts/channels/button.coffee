App.button = App.cable.subscriptions.create "ButtonChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log('ButtonChannel - connected')

  disconnected: ->
    # Called when the subscription has been terminated by the server
    console.log('ButtonChannel - disconnected')

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    switch data.state
      when 'ready'
        $("button[data-id='#{data.button_id}']").removeClass('is-loading')
      when 'pending'
        $("button[data-id='#{data.button_id}']").addClass('is-loading')
