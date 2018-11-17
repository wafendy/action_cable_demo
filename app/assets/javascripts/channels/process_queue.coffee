App.process_queue = App.cable.subscriptions.create "ProcessQueueChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    images = $("#images")[0].dataset
    containers = $("img[src$='.png'")
    if containers.length > 0
      canvas = containers[0]
      queue = $('#queue').children()
      if queue.length > 0
        item = queue[0]
        item.remove()

        switch item.dataset.type
          when 'dance'
            $(canvas).attr('src', images.dance)
          when 'sprinkle'
            $(canvas).attr('src', images.sprinkle)
          when 'toilet'
            $(canvas).attr('src', images.toilet)
          when 'smack'
            $(canvas).attr('src', images.smack)

        $.ajax
          url: '/ajax/index'
          method: 'GET'
          data: {
            canvas_id: canvas.id,
            job_action: 'remove_from_queue'
          }
