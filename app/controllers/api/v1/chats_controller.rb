module API
  module V1
    class ChatsController < APIV1Controller
      def index
        render json: { rooms: current_user.rooms }
      end
    end
  end
end
