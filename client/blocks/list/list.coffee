Template.all.items = ->
  Todos.find({})

Template.active.items = ->
  Todos.find({status: 'active'})

Template.completed.items = ->
  Todos.find({status: 'completed'})

Template.form.checked= ->
  checked = if Todos.find({status:"active"}).count({}) > 0 then 'checked' else 'unchecked'

Template.form.events({
  "keypress": (k)->
    if k.charCode is 13
      $(document).trigger('add-todo')
  "click #toggle-all": ->
    todos = Todos.find({})
    count = Todos.find({status:"active"}).count({})
    if count > 0
      todos.forEach (t) ->
        Todos.update({_id: t._id},{$set: {status: "completed"}})
      $('#toggle-all').removeClass('unchecked').addClass('checked')
    else
      todos.forEach (t) ->
        Todos.update({_id: t._id},{$set: {status: "active"}})
      $('#toggle-all').removeClass('checked').addClass('unchecked')
})

$(document).on 'add-todo', ->
  val = $('#add-todo').val()
  if val.trim() == ""
    $(document).trigger('error', {status: "Введите задачу"})
  else
    Inputs.insert({value: val})
    val = val.fuckitize()
    Todos.insert({title: val, status: 'active'})
    $('#add-todo').val("")