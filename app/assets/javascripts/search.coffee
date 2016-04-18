# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready () ->
  $input = $('#search')
  $input.typeahead({
    source: [{id: "someId1", name: "Display name 1"},{id: "someId2", name: "Display name 2"}],
  autoSelect: true})
  $input.change(->
    current = $input.typeahead("getActive")
    if current
      if current.name == $input.val()
        console.log "redirect to #{current}"
      else
        console.log "not redirect to #{current}"
    else
      console.log "fail #{current}"
  )

  return

