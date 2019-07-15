class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user

  validates :content, presence: true
  after_commit :boardcast_message

  private

  def boardcast_message
    ActionCable.server.broadcast 'chat_channel', message: content
  end
end
