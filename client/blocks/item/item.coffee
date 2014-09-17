Template.item.events({
  "click .remove": ->
    id = this._id

    $(document).trigger('remove-todo', {id: id})
    $("##{id}").addClass 'removed'
    
    setTimeout ->
      Todos.remove(id)
    ,250
  "click .check": ->
    if this.status is 'active'
      $(document).trigger('complete-todo', {id: this._id})
      Todos.update({_id: this._id}, {$set: {status: 'completed'}})
    else
      $(document).trigger('activate-todo', {id: this._id})
      Todos.update({_id: this._id}, {$set: {status: 'active'}})
})