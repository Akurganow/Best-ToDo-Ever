if Clear.find({}).count({}) <= 0
  Clear.insert({timestamp: Math.round(new Date().getTime() / 1000)})

Meteor.setInterval ->
  now = Math.round(new Date().getTime() / 1000)
  clearTime = now + 3600
  clear = Clear.find({timestamp: {$lt: now}})
  if clear.count({}) > 0
    Clear.update({timestamp: {$lt: now}},{timestamp: clearTime})
    console.log "Cleared in #{Date(now)}"
    Todos.remove({})
,10000