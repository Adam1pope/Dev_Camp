ready = ->
  Typed.new '.element',
    strings: [
      'Imagination rules the world.'
    ]
    typeSpeed: 0
  return  

$(document).ready ready
$(document).on 'turbolinks:load', ready
