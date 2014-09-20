$ ->
  $(document).on 'error', (evnt,obj) ->
    console.error obj.status
    $error = $("<div class='error-message'>#{obj.status}</div>")
    $('.error-container').prepend($error)
    setTimeout ->
      $error.remove()
    ,2500
    console.log $error