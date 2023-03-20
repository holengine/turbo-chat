jQuery(document).on 'turbolinks:load', ->
  App.room = App.cable.subscriptions.create "ClientChannel", 
  connected: ->
    console.log('Connected to ClientChannel')

  disconnected: ->
    console.log('Disconnected from ClientChannel')
    
  received: (data) ->
    if document.getElementById("user_" + data['user_id'])
      document.getElementById("user_" + data['user_id']).outerHTML = data['user']
    else
      console.log('Received message: ' + data['user'])
      $('#users-online').append data['user']
      