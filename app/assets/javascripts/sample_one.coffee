# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.sample-one-button-action').on "click", (event) ->
    $.ajax
      url: '/ajax/index'
      method: 'GET'
      data: {
        button_id: event.currentTarget.dataset.id,
        job_action: 'sample_one'
      }
