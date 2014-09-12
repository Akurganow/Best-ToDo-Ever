Template.item.events({
  "click .remove": ->
    id = this._id
    $("##{id}").addClass 'removed'
    setTimeout ->
      Todos.remove(id)
    ,250
  "click .check": ->
    id = this._id
    $item = $("##{id}")
    if $item.hasClass('active')
      $item.addClass('completed').removeClass('active')
      Todos.update({_id: id}, {$set: {status: 'completed'}})
    else
      $item.addClass('active').removeClass('completed')
      Todos.update({_id: id}, {$set: {status: 'active'}})
})