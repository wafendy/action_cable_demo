# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  if $('div#chatbox').length == 1
    unique_id = Math.random().toString(36).substr(2, 9)
    $('div#chatbox')[0].dataset.userId = unique_id
    $('#message_input').on "keypress", (event) ->
      if(event.which == 13)
        input_element = $(event.currentTarget)
        $.ajax
          url: '/ajax/index'
          method: 'GET'
          data: {
            message_id: unique_id,
            message: input_element.val(),
            sender: $('#message_sender').val(),
            job_action: 'chat_log'
          }
          success: ->
            input_element.val('')
