$ ->
  tracker = new Boba

  $(document).on 'add-todo', ->
    tracker.push({
      category: "todo",
      action: "new todo"
    })

  $(document).on 'remove-todo', ->
    tracker.push({
      category: "todo",
      action: "remove todo"
    })

  $(document).on 'complete-todo', ->
    tracker.push({
      category: "todo",
      action: "new todo"
    })

  $(document).on 'activate-todo', ->
    tracker.push({
      category: "todo",
      action: "new todo"
    })