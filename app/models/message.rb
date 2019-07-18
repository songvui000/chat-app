class Message < ApplicationRecord
  self.primary_key = 'guid'
  belongs_to :room
  belongs_to :member

  validates :content, presence: true
  after_commit :boardcast_message

  private

  def boardcast_message
    ActionCable.server.broadcast "ChatRoom-#{room.code}", message: self.attributes.merge(code: room.code)
  end
end
