ready = ->
  Typed.new '.element',
    strings: [
        'Far away The ship is taking me far away' 
        'Far away from the memories' 
        'Of the people who care if I live or die' 
        'The starlight' 
        'I will be chasing a starlight Until the end of my life' 
        
        ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready