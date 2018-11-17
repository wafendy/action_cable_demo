# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#message_input').on "keypress", (event) ->
    if(event.which == 13)
      input_element = $(event.currentTarget)
      $.ajax
        url: '/ajax/index'
        method: 'GET'
        data: {
          message: input_element.val(),
          sender: $('#message_sender').val(),
          job_action: 'chat_log'
        }
        success: ->
          input_element.val('')
