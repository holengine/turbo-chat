class UserService
  def initialize(user:)
    @user = user
  end

  def online
    @user.update(status: true)
  end

  def offline
    @user.update(status: false)
  end

  def perform
    broadcast_user
  end

  private

  def broadcast_user
    ActionCable.server.broadcast "user_channel",
      { user: render_user, user_id: @user.id }
  end

  def render_user
    ApplicationController.renderer.render(partial: "users/user", locals: {
      user: @user
    })
  end
end
