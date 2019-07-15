class Room < ApplicationRecord
  has_many :messages

  def users
    User.where(id: user_ids)
  end
end
