App.add_queue = App.cable.subscriptions.create "AddQueueChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    button = """
      <button class="button #{data.button_color}" data-id="#{Date.now()}" data-type="#{data.button_id}">
        #{data.button_id}
      </button>
    """
    $('#queue').append(button);
