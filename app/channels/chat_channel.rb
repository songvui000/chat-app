class ChatChannel < ApplicationCable::Channel
  def subscribed
    room = Room.find_by(code: params[:code])
    if room.nil?
      room = Room.create(name: 'du hi', code: params[:code], user_ids: [1, 2])
      Member.create(room: room, user: current_user)
    end
    stream_from("ChatRoom-#{(params[:code])}")
  end

  def speak(data)
    message = Message.new(content: data['message'])
    message.room = Room.find_by(code: params[:code])
    message.member = current_user.members.find_by(room_id: message.room_id)
    message.guid = data['guid']
    message.save
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
