class Message < ApplicationRecord
  after_commit -> { NotificationRelayJob.perform_later(self.body) }
end
