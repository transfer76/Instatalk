App.presence = App.cable.subscriptions.create "PresenceChannel",
  connected: ->
    console.log('PresenceChannel connected')
    # Called when the subscription is ready for use on the server

  disconnected: ->
    console.log('PresenceChannel disconnected')
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    console.log('PresenceChannel received')

    App.presence.drawOnlineUsers(data.users)

  drawOnlineUsers: (users) ->
    console.log(users)
    console.log(users.length)
    if (users.length > 0)
      text = 'Online: '
      text += users.map((user) -> user.nickname).join(', ')

      $('.js-online-users').text(text)
