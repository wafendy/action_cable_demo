App.remove_queue = App.cable.subscriptions.create "RemoveQueueChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    images = $("#images")[0].dataset
    
    $("##{data.canvas_id}").attr('src', images.placeholder)
