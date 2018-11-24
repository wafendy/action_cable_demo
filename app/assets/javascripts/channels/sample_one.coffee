App.sample_one = App.cable.subscriptions.create "SampleOneChannel",
  connected: ->
    console.log('SampleOneChannel - connected')
    # Called when the subscription is ready for use on the server

  disconnected: ->
    console.log('SampleOneChannel - disconnected')
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
