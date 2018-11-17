# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
App.room = App.cable.subscriptions.create "SampleOneChannel",
  received: (data) ->
    console.log(data)


$ ->
  $('#sample_one_button_1').click ->
    $.ajax
      url: '/ajax/index'
      method: 'GET'
      data: {
        button_id: 'sample_one_button_1',
        job_action: 'sample_one'
      }

  $('#sample_one_button_2').click ->
    $.ajax
      url: '/ajax/index'
      method: 'GET'
      data: {
        button_id: 'sample_one_button_2',
        job_action: 'sample_one'
      }
