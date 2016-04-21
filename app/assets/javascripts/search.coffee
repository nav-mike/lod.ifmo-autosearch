# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready () ->
  # $('.js-loading-bar').modal
  #   backdrop: 'static'
  #   show: false
    
  # $modal = $('.js-loading-bar')
  # $bar = $modal.find('.progress-bar')
  # $modal.modal 'show'
  # $bar.addClass 'animate'
      
  $input = $('#search')
  $input.typeahead({
    source: window.data,
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

  return

