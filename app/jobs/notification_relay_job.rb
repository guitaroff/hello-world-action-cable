class NotificationRelayJob < ApplicationJob
  queue_as :default

  def perform(notification)
    message = ApplicationController.render partial: "notifications/#{notification.notifiable_type.underscore.pluralize}/#{notification.action}", locals: {notification: notification}, formats: [:html]
    ActionCable.server.broadcast 'web_notifications_channel', message: message
  end
end
