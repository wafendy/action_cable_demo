App.chat_log = App.cable.subscriptions.create "ChatLogChannel",
  connected: ->
    console.log('ChatLogChannel - connected')
    # Called when the subscription is ready for use on the server

    $ ->
      if $('div#chatbox').length == 1
        unique_id = Math.random().toString(36).substr(2, 9)
        $('div#chatbox')[0].dataset.userId = unique_id
        $('#message_input').on "keypress", (event) ->
          if(event.which == 13)
            input_element = $(event.currentTarget)
            App.chat_log.send({
              message_id: unique_id,
              message: input_element.val(),
              sender: $('#message_sender').val(),
              action: 'send_chat_log'
            })
            input_element.val('')

  disconnected: ->
    console.log('ChatLogChannel - disconnected')
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    current_id = $('#chatbox')[0].dataset.userId
    chat_box_id = Date.now()

    if current_id == data.message_id
      self_message = """
        <nav id='#{chat_box_id}' class="level">
          <div class="level-left">
            <div class="level-item"></div>
          </div>
          <div class="level-right">
            <div class="level-item">
              <div class="notification">
                <p class="subtitle">#{data.sender}</p>
                #{data.message}
              </div>      
            </div>
          </div>
        </nav>
      """
    else
      self_message = """
        <nav id='#{chat_box_id}' class="level">
          <div class="level-left">
            <div class="level-item">
              <div class="notification is-warning">
                <p class="subtitle">#{data.sender}</p>
                #{data.message}
              </div>      
            </div>
          </div>
        </nav>
      """

    $('#chatbox').prepend(self_message)
    setTimeout ->
      $('#' + chat_box_id).remove()
    , 5000
