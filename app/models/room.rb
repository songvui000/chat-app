class Room < ApplicationRecord
  has_many :messages
  has_many :members

  def users
    User.where(id: user_ids)
  end
end
