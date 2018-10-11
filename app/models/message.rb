class Message < ApplicationRecord
  after_commit :run_broadcast

  def run_broadcast
    puts "run_broadcast"
    ActionCable.server.broadcast 'web_notifications_channel', message: '<p>Hello World!</p>'
  end
end
