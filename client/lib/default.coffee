$ ->
  tracker = new Boba

  $(document).on 'add-todo', ->
    val = $('#add-todo').val()
    
    tracker.push({
      category: "todo",
      action: "new todo",
      label: val
    })

  $(document).on 'remove-todo', (event, obj) ->
    tracker.push({
      category: "todo",
      action: "remove todo",
      label: obj.id
    })

  $(document).on 'complete-todo', (event, obj) ->
    tracker.push({
      category: "todo",
      action: "new todo",
      label: obj.id
    })

  $(document).on 'activate-todo', (event, obj) ->
    tracker.push({
      category: "todo",
      action: "new todo",
      label: obj.id
    })