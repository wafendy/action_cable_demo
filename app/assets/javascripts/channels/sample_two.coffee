App.sample_two = App.cable.subscriptions.create "SampleTwoChannel",
  connected: ->
    console.log('SampleTwoChannel - connected')
    # Called when the subscription is ready for use on the server

  disconnected: ->
    console.log('SampleTwoChannel - disconnected')
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
