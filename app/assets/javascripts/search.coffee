# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready () ->
  $.ajax({
    url: '/data.json',
    dataType: 'json',
    success: (data) ->
      console.log data
      
      $input = $('#search')
      $input.typeahead({
        source: data,
      autoSelect: true})
      $input.change(->
        current = $input.typeahead("getActive")
        if current
          if current.name == $input.val()
            window.location.href = current.id
          else
            console.log "not redirect to #{current}"
        else
          console.log "fail #{current}"
      )
    error: (data) ->
      console.log data
  })

  return

