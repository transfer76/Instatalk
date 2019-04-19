class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    logger.info "Subscribed to RoomChannel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    logger.info "Unsubscribed to RoomChannel"
  end

  def speak
    logger.info "RoomChannel, speak: #{data.inspect}"
  end
end
