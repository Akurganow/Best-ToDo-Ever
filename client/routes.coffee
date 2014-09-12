Router.configure({
  autoRender: true
})

Router.map ->
  this.route('all', {
    path: '/',
    layoutTemplate: 'index'
  })
  
  this.route('active', {
    path: '/active',
    layoutTemplate: 'index'
  })

  this.route('completed', {
    path: '/completed',
    layoutTemplate: 'index'
  })