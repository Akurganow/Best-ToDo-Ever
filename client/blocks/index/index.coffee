Template.indexFooter.display = ->
  result = if Todos.find({}).count({}) > 0 then true else false

Template.indexFooter.displayActive = ->
  result = if Todos.find({status: "active"}).count({}) > 0 then true else false

Template.indexFooter.displayCompleted = ->
  result = if Todos.find({status: "completed"}).count({}) > 0 then true else false

Template.indexFooter.activeCount = ->
  Todos.find({status: "active"}).count({})

Template.indexFooter.completedCount = ->
  Todos.find({status: "completed"}).count({})

Template.indexFooter.events({
  "click #clear-completed": ->
    completed = Todos.find({status: "completed"})
    completed.forEach (t) ->
      Todos.remove(t._id)
})