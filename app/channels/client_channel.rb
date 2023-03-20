class ClientChannel < ApplicationCable::Channel
  def subscribed
    logger.info "User #{current_user.nickname} online from UserChannel"

    stream_from "user_channel"
    user_service = UserService.new(user: current_user)
    user_service.online
    user_service.perform
  end

  def unsubscribed
    logger.info "User #{current_user.nickname} offline from UserChannel"

    if ActionCable.server.connections.select { |connect| connect.current_user == current_user }.length == 0
      stream_from "user_channel"
      user_service = UserService.new(user: current_user)
      user_service.offline
      user_service.perform
    end
  end
end
