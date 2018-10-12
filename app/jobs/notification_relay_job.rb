class NotificationRelayJob < ApplicationJob
  queue_as :default

  def perform(notification)
    ActionCable.server.broadcast 'web_notifications_channel', message: "<p>#{notification}</p>"
  end
end
