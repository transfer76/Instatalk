class PresenceChannel < ApplicationCable::Channel
  def subscribed
    current_user.update_attribute(:online, true)

    stream_from "presence_channel"

    user_online_show
  end

  def unsubscribed
    current_user.update_attribute(:online, false)

    stream_from "presence_channel"

    user_online_show
  end

  private

  def user_online_show
    ActionCable.server.broadcast "presence_channel", users: User.online.as_json
  end
end
