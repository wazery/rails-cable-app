class Message < ActiveRecord::Base
  # Validations
  validates :body, :room, :user, presence: true

  # Relations
  belongs_to :room
  belongs_to :user

  # after_commit { MessageRelayJob.perform_later(self) }
end
