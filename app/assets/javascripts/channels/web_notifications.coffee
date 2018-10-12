App.web_notifications = App.cable.subscriptions.create "WebNotificationsChannel",
  connected: ->
    console.log('CONNECTED')

  disconnected: ->
    console.log('DISCONNECTED')

  received: (data) ->
    console.log('RECEIVED', data['message'])
    $("#messages").prepend(data['message']);
