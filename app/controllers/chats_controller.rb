class ChatsController < ApplicationController
  def index
    @room = Room.includes(:messages).first
  end
end
