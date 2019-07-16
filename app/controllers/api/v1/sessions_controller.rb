module API
  module V1
    class SessionsController < DeviseTokenAuth::SessionsController
      def create
        super do
          cookies[:uid] = @resource.uid
          cookies['access-token'] = @token
          cookies[:client] = @client_id
        end
      end
    end
  end
end
