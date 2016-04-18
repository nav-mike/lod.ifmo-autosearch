# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready () ->
  substringMatcher = (strs) ->
    return (q, cb) ->
      matches = []
      substrRegex = new RegExp(q, 'i')

      $.each(strs, (i, str) ->
        if substrRegex.test(str)
          matches.push str
        return
      )

      cb(matches)
      return

  states = ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 
            'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 
            'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 
            'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 
            'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 'Montana', 
            'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 
            'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 
            'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 
            'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 
            'West Virginia', 'Wisconsin', 'Wyoming']

  $('#search').typeahead({
    source: states
  })

  return

