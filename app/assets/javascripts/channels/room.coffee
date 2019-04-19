jQuery(document).on 'turbolinks:load', ->
  messages = $('#messages')

  if messages.length > 0
    createRoomChannel messages.data('room-id')

createRoomChannel = (roomId) ->    
  App.room = App.cable.subscriptions.create {channel: "RoomChannel", roomId: roomId},
    connected: ->
      # Called when the subscription is ready for use on the server
       console.log('Connected to RoomChannel')

    disconnected: ->
      # Called when the subscription has been terminated by the server
       console.log('Disconnected from RoomChannel')

    received: (data) ->
      # Called when there's incoming data on the websocket for this channel
       console.log('Received message: ' + data['message'])

    speak: (message) ->
      @perform 'speak', message: message
